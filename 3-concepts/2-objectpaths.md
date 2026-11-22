# Object Paths

Adobe Portable Document Format (PDF) files are made of a number of objects. Objects may describe a page, a resource, a sequence of drawing operations an image or many other components as required by the document.

Every object has a unique Object ID numbered from one upwards. The ID zero refers to the Empty Object which is an object required internally within ABCpdf. ID -1 refers to the document trailer. The root of the document hierarchy can be accessed using the [Doc.Root](../5-abcpdf/doc/2-properties/root.md) property or the [ObjectSoup.Catalog](../6-abcpdf.objects/2-objectsoup/2-properties/3-catalog.md).

You can use the [GetInfo](../5-abcpdf/doc/1-methods/getinfo.md) and [SetInfo](../5-abcpdf/doc/1-methods/setinfo.md) methods to directly manipulate any PDF object in your document. However, this is not advisable unless you are reasonably familiar with the Adobe PDF Specification.

Under normal situations, ABCpdf ensures that your documents are internally consistent. Using the SetInfo method with Dictionaries, Values or Paths allows great flexibility in modifying documents but also allows you to create invalid or corrupt documents.

## Dictionaries

If your object is a dictionary, you can specify a particular dictionary entry for replacement or insertion (dictionary entries always begin with a slash '/' character). So if you wanted to change the type of an annotation, you might use the following code:

```csharp
theDoc.SetInfo(theID, "/Subtype", "(Stamp)");
```

## Values

Alternatively, you can use the 'Value' selector to specify a replacement for the entire object. However, if you do this, you must ensure that the type of your new object is the same as the type of your old one - you cannot replace a number with a string. For example.

```csharp
theDoc.SetInfo(theID, "Value", "<</Font /Helvetica /Size 10>>");
```

## Paths

Specifications can be chained together to form complete paths. Dictionary entries are specified by preceding the entry name with a slash. Array items are specified using square brackets containing the index of the item you wish to reference (starting at zero).

For example, the code below would return the first item in the MediaBox array.

```csharp
theDoc.GetInfo(theID, "/MediaBox[0]");
```

And the code below would return the count entry of the parent of the object.

```csharp
theDoc.GetInfo(theID, "/Parent/Count");
```

## References

Sometimes, you may wish to find a reference to a particular object. Sometimes, you may wish to skip through the reference and jump straight into the object itself.

You can do this using an asterisk to de-reference an object within a path. If the object is a reference, it will be de-referenced; if it is not, then the operator will be ignored.

For example, the code below might be used to return the content stream of the first page of a document.

```csharp
theDoc.GetInfo(theDoc.Root, "/Pages*/Kids*[0]*/Contents");
```

## SetInfo

You can use [SetInfo](../5-abcpdf/doc/1-methods/setinfo.md) to insert values specified by paths. You can specify the type of object to be inserted by appending an identifier to the path.

| Object Type | Description |
| :---: | --- |
| :Bool | A Boolean value. |
| :Name | A name value. |
| :Num | A numeric value |
| :Text | A string value. |
| :Ref | An indirect reference to an object. |
| :Rect | A rectangle. Internally, rectangles are held as arrays of numbers, but this provides a convenient shortcut. |
| :Del | This is a special entry. It does not insert an object. Instead, it ensures that the object specified by the path is deleted. |
| :Text\[Hex\*NoBreak\] | The asterisk is a delimiter. Each of 'Hex', 'NoBreak', and 'Byte' is optional. For example, you can specify "/MyEntry:Text\[Hex\]".<br>The 'Hex' specifier indicates that the text should be hex-encoded. The 'NoBreak' specifier indicates that there should be no line breaks. Also available is the 'Byte' specifier, which indicates that characters should be interpreted as a string of bytes rather than a Unicode string. These settings are used infrequently, and in general, you will not need them. |
| :String | This only works for string atoms.<br>If the string atom contains a value it returns that value.<br>If there is no value, or the atom is of the wrong type, it returns the special string.<br>"string_is_null\\0ABCpdf" |
| :Int32 | The number in 32 bit integer format.<br>It may not be possible to represent a value in this format if the number has a floating point element or is too big or too small.<br>If it is not possible to represent the value, a default value of zero is returned. |
| :Int64 | The equivalent of Int32 but for 64 bit integer values. |
| :Int32\[-1\] | The equivalent of Int32 but specifying a default value of -1. |
| :Int64\[-1\] | The equivalent of Int64 but specifying a default value of -1. |

Suppose you wanted to insert an annotation into the page annotations array. The following code will find the page entry named "/Annots" (or it will create it if it doesn't exist). It will then ensure that this entry references an array, and it will insert a reference Atom at the beginning (item zero) of the array.

```csharp
theDoc.SetInfo(theDoc.Page, "/Annots[0]:Ref", theID);
```

Alternatively, if you want to insert your annotation at the end of the array, just leave out the array index:

```csharp
theDoc.SetInfo(theDoc.Page, "/Annots[]:Ref", theID);
```

You can also locate items in an array from the end. Use -1 for the last item, -2 for the second last item, and so on.

```csharp
theDoc.GetInfo(theDoc.Page, "/Annots[-1]:Ref");
```

Insertions can be complex. The next example gets the entry called "/Font", which contains a dictionary. This dictionary includes an element called "/Names", which contains an array. The call inserts the Name object "/Helvetica" at the start of this array.

```csharp
theDoc.SetInfo(theID, "/Font/Names[0]:Name", "Helvetica");
```

## GetInfo

You can use [GetInfo](../5-abcpdf/doc/1-methods/getinfo.md) to query values specified by paths. The format of the return value is exactly the same as would be output to your PDF file. You can specify an alternative format by appending an identifier to the string.

| Format Name | Description |
| :---: | --- |
| :ID | The Object ID associated with an object reference.<br>Normally, object references are returned in an extended format (e.g.<br>`23 0 R`<br>). However, if you are only interested in the Object ID, then you use this format specifier to get only the Object ID (e.g.<br>`23`<br>). |
| :Obj | The object value.<br>This is used to ensure that all indirect references are resolved before the value of the object is returned. This ensures you always get an object value rather than an object reference. |
| :Text | The text of a name or string.<br>Names and strings may be encoded in a number of ways before output to PDF. The text format specifier ensures that the unencoded value is returned. |
| :Num | The value of a number.<br>If the object referred to is not a number, then no value is returned. |
| :Rect | The rect string for a rectangle object.<br>Rects are typically represented as an array. By specifying the rect format, you will get a string value you can place directly into the XRect object. |
| :Count | The number of items in an array.<br>The count specifier is a special directive which returns the number of items in an array rather than an item from that array. |
| :KeyCount | The number of items in a dictionary.<br>The keycount specifier is a special directive which returns the number of items in a dictionary rather than an item from that dictionary. |
| :Keys | The keys for a dictionary.<br>The keys specifier is a special directive which returns a comma delimited list of the names of the entries in the dictionary. |

For example, the code below could return the rect of the page CropBox.

```csharp
theDoc.GetInfo(theID, "/CropBox:Rect");
```
