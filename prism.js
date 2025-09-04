// Poor mans's PrismJS. We need this because JavaScript inside a
// CHM is somewhat limited and the standard approaches don't work.
// Looks to me to be IE 10 based.
// JV 11 Dev 2020

window.onload = function () { colorize() };

// https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/
// here we have only the reserved keywords
var keywordCS = ["abstract", "as", "base", "bool", "break", "byte", "case", "catch", "char", "checked", "class", "const", "continue", "default", "delegate", "do", "else", "enum", "event", "explicit", "extern", "false", "finally", "fixed", "for", "foreach", "goto", "if", "implicit", "in", "interface", "internal", "is", "lock", "namespace", "new", "null", "operator", "out", "override", "params", "private", "protected", "public", "readonly", "ref", "return", "sealed", "sizeof", "stackalloc", "static", "struct", "switch", "this", "throw", "true", "try", "typeof", "unchecked", "unsafe", "using", "virtual", "void", "volatile", "while", "decimal", "double", "float", "int", "long", "object", "sbyte", "short", "string", "uint", "ulong", "ushort"];
var keywordVB = ["AddHandler", "AddressOf", "Alias", "And", "AndAlso", "As", "Boolean", "ByRef", "Byte", "ByVal", "Call", "Case", "Catch", "CBool", "CByte", "CChar", "CDate", "CDbl", "CDec", "Char", "CInt", "Class", "Constraint", "Class", "Statement", "CLng", "CObj", "Const", "Continue", "CSByte", "CShort", "CSng", "CStr", "CType", "CUInt", "CULng", "CUShort", "Date", "Decimal", "Declare", "Default", "Delegate", "Dim", "DirectCast", "Do", "Double", "Each", "Else", "ElseIf", "End", "Statement", "End", "<keyword>", "EndIf", "Enum", "Erase", "Error", "Event", "Exit", "False", "Finally", "For", "For", "Each", "Friend", "Function", "Get", "GetType", "GetXMLNamespace", "Global", "GoSub", "GoTo", "Handles", "If", "Implements", "Implements", "Statement", "Imports", "In", "Inherits", "Integer", "Interface", "Is", "IsNot", "Let", "Lib", "Like", "Long", "Loop", "Me", "Mod", "Module", "Module", "Statement", "MustInherit", "MustOverride", "MyBase", "MyClass", "NameOf", "Namespace", "Narrowing", "New", "Constraint", "New", "Operator", "Next", "Not", "Nothing", "NotInheritable", "NotOverridable", "Object", "Of", "On", "Operator", "Option", "Optional", "Or", "OrElse", "Out", "Overloads", "Overridable", "Overrides", "ParamArray", "Partial", "Private", "Property", "Protected", "Public", "RaiseEvent", "ReadOnly", "ReDim", "REM", "RemoveHandler", "Resume", "Return", "SByte", "Select", "Set", "Shadows", "Shared", "Short", "Single", "Static", "Step", "Stop", "String", "Structure", "Constraint", "Structure", "Statement", "Sub", "SyncLock", "Then", "Throw", "To", "True", "Try", "TryCast", "TypeOf…Is", "UInteger", "ULong", "UShort", "Using", "Variant", "Wend", "When", "While", "Widening", "With", "WithEvents", "WriteOnly", "Xor", "#Const", "#Else", "#ElseIf", "#End", "#If"];

function colorize() {
	var isChm = isCHM();
	var codes = document.getElementsByTagName("code");
	for (var i = 0; i < codes.length; i++) {
		try {
			var e = codes[i];
			if (isChm)
				removePreTag(e);
			colorizeCodeElement(e);
		}
		catch (err) {
		}
	}
}

function isCHM() {
	// https://archive.ph/5tvtg#selection-781.0-791.60
	// The following is a list of correct HTML Help URLs:
	//  • Filename.chm::/page.htm - Only works inside of HTML Help. Microsoft strongly discourages its use (also known as "super-automagic" URL).
	//  • Mk:@MSITStore:filename.chm::/page.htm - The standard HTML Help URL that works with Internet Explorer 3.0 and later (also known as "automagic" URL).
	//  • Ms-its:filename.chm::/page.htm - The new standard HTML Help URL that works with Internet Explorer 4.0 and later (also know as "automagic" URL).
	// NOTE: If you are using scripting to get the URL of the current page, you may receive a URL that starts with Mk:@MSITStore:, but you may also receive a URL that starts with Ms-its:, depending on the navigation method used to reach the page.
    var loc = window.location;
	if (loc == null)
		return false;
	if (loc.protocol === 'ms-its:' || loc.protocol === 'its:')
		return true;
	if (loc.href != null && loc.href.toLowerCase().indexOf('.chm::/') >= 0)
		return true;
	return false;
}

function colorizeCodeElement(e) {
	var isCS = e.className.indexOf("csharp") >= 0;
	var isVB = e.className.indexOf("vbnet") >= 0;
	if (!isCS && !isVB)
		return;
	e.className += " codeBox";
	var kids = e.childNodes;
	var htm = "";
	for (var i = 0; i < kids.length; i++) {
		var type = kids[i].nodeType;
		if (type == 3)
			htm += colorizeCodeSnippet(kids[i], isCS);
		else if (type == 1)
			htm += colorizeCodeTag(kids[i]);
	}
	e.innerHTML = htm;
}

function removePreTag(codeElement) {
	// For CHM we move code out of pre element, otherwise copy
	// and paste will not get the line endings right.
	var preElement = codeElement.parentElement;
	if (preElement != null && preElement.tagName.toLowerCase() == "pre") {
		var tdElement = preElement.parentElement;
		if (tdElement != null)
			tdElement.replaceChild(codeElement, preElement);
	}
}

function colorizeCodeSnippet(e, isCS) {
	var htm = e.nodeValue;
	if (isCS) {
		var newhtm = "";
		var word = "";
		var inString = false;
		var inChar = false;
		var inComment = false;
		for (var i = 0; i < htm.length; i++) {
			var c = htm.charAt(i);
			// Checking for a carriage return. Mac OS uses solo carriage return for new line
			if (c == '\r') {
				// Also checking for a following newline, as Windows uses a CR followed by a NL for a new line
				if (i + 1 < htm.length && htm.charAt(i + 1) == '\n') {
					i++;
				}
				if (inComment) {
					word = "<span class='codeComment'>" + word + "</span>";
					inComment = false;
					newhtm += (word + "<br/>");
					word = "";
					continue;
				}
				newhtm += checkWord(word, keywordCS)+ "<br/>";
				word = "";
				continue;
			}
			// Checking for a lone newline as Linux uses a lone NL for a new line
			else if (c == '\n') {
				if (inComment) {
					word = "<span class='codeComment'>" + word + "</span>";
					inComment = false;
					newhtm += (word + "<br/>");
					word = "";
					continue;
				}
				newhtm += checkWord(word, keywordCS)+ "<br/>";
				word = "";
				continue;
			}
			else if (c == '\"' && !inString && !inChar) {
				newhtm += word;
				word = "";
				inString = true;
			}
			else if (c == '\'' && !inChar && !inString) {
				newhtm += word;
				word = "";
				inChar = true;
			}
			else if (c == '<') {
				c = "&lt;"
			}
			else if (c == '>') {
				c = "&gt;"
			}
			else if ((c == ';' || c == ' ' || c == ',' || c == '.' || c == ')' || c == '\xa0' || c == '<' || c == '>') && !inString && !inChar && !inComment) {
				newhtm += checkWord(word, keywordCS);
				newhtm += c == ')' ? "<span class='codeFunction'>)</span>" : c;
				word = "";
				continue;
			}
			else if (c == '(' && !inString && !inChar && !inComment) {
				if (arrayContains(keywordCS, word)) {
					newhtm += "<span class='codeKeyword'>" + word + "</span>";
					word = "";
				}
				word += c;
				newhtm += "<span class='codeFunction'>" + word + "</span>";
				word = "";
				continue;
			}
			if (inString) {
				word += c;
				if (c == '\"' && word.length > 1) {
					inString = false;
					newhtm += "<span class='codeLiteral'>" + word + "</span>";
					word = "";
				}
				continue;
			}
			else if (inChar) {
				word += c;
				if (c == '\'' && word.length > 1) {
					inChar = false;
					newhtm += "<span class='codeLiteral'>" + word + "</span>";
					word = "";
				}
				continue;
			}
			word += c;
			if (word.length > 1 && c == '/' && word.charAt(word.length - 2) == '/' && !inComment) {
				newhtm += checkWord(word.substring(0, word.length - 3), keywordCS);
				word = "//";
				inComment = true;
			}
		}
		return newhtm;
	}
	else {
		var newhtm = "";
		var word = "";
		var inString = false;
		var inComment = false;
		for (var i = 0; i < htm.length; i++) {
			var c = htm.charAt(i);
			// Checking for a carriage return. Mac OS uses solo carriage return for new line
			if (c == '\r') {
				// Also checking for a following newline, as Windows uses a CR followed by a NL for a new line
				if (i + 1 < htm.length && htm.charAt(i + 1) == '\n') {
					i++;
				}
				if (inComment) {
					word = "<span class='codeComment'>" + word + "</span>";
					inComment = false;
					newhtm += (word + "<br/>");
					word = "";
					continue;
				}
				newhtm += checkWord(word, keywordVB)+ "<br/>";
				word = "";
				continue;
			}
			// Checking for a lone newline as Linux uses a lone NL for a new line
			else if (c == '\n') {
				if (inComment) {
					word = "<span class='codeComment'>" + word + "</span>";
					inComment = false;
					newhtm += (word + "<br/>");
					word = "";
					continue;
				}
				newhtm += checkWord(word, keywordVB)+ "<br/>";
				word = "";
				continue;
			}
			else if (c == '\"' && !inString) {
				newhtm += word;
				word = "";
				inString = true;
			}
			else if (c == '\'' && !inComment) {
				inComment = true;
			}
			else if (c == '<') {
				c = "&lt;"
			}
			else if (c == '>') {
				c = "&gt;"
			}
			else if ((c == ' ' || c == ',' || c == '.' || c == ')' || c == '\xa0') && !inString && !inComment) {
				newhtm += checkWord(word, keywordVB);
				newhtm += c == ')' ? "<span class='codeFunction'>)</span>" : c;
				word = "";
				continue;
			}
			else if (c == '(' && !inString && !inComment) {
				if (arrayContains(keywordVB, word)) {
					newhtm += "<span class='codeKeyword'>" + word + "</span>";
					word = "";
				}
				word += c;
				newhtm += "<span class='codeFunction'>" + word + "</span>";
				word = "";
				continue;
			}
			if (inString) {
				word += c;
				if (c == '\"' && word.length > 1) {
					inString = false;
					newhtm += "<span class='codeLiteral'>" + word + "</span>";
					word = "";
				}
				continue;
			}
			word += c;
		}
		return newhtm;
	}
}

function colorizeCodeTag(e) {
	// we don't colorize anything inside an existing tag
	return e.outerHTML;
}

function highlight(text) {
	var inputText = document.getElementById("inputText");
	var innerHTML = inputText.innerHTML;
	var index = innerHTML.indexOf(text);
	if (index >= 0) {
		innerHTML = innerHTML.substring(0, index) + "<span class='highlight'>" + innerHTML.substring(index, index + text.length) + "</span>" + innerHTML.substring(index + text.length);
		inputText.innerHTML = innerHTML;
	}
}

function arrayContains(array, value) {
	for (var i = 0; i < array.length; i++) {
		if (value == array[i]) {
			return true;
		}
	}
	return false;
}

function checkWord(word, keywords) {
	firstLetter = word.charAt(0);
	if ((firstLetter >= '0' && firstLetter <= '9')) {
		return "<span class='codeNumber'>" + word + "</span>";
	}
	else if (arrayContains(keywords, word)) {
		return "<span class='codeKeyword'>" + word + "</span>";
	}
	else if ((firstLetter >= 'a' && firstLetter <= 'z')) {
		return "<span class='codeOrdinary'>" + word + "</span>";
	}
	else if ((firstLetter >= 'A' && firstLetter <= 'Z')) {
		return "<span class='codeType'>" + word + "</span>";
	}
	else {
		return word;
	}
}

