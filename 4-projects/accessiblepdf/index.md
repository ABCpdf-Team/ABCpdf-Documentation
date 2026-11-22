# AccessiblePDF Example Project

## Project

This project demonstrates how to tag a PDF and make it accessible. The methods used are based around Section 508 compliance and the PDF/UA standard.

The basis of this project is the use of the [AccessibilityOperation and the MakeAccessible method.](../../8-abcpdf.operations/c-accessibilityoperation/1-methods/makeaccessible.md) You can read more about these and the types of information that is added, under the documentation for those methods.

However a one function method can only ever achieve so much in the context of complicated and semantically ambiguous documents. For example the reading order of any complex document is likely to vary between people - there is no absolutely correct answer. ABCpdf will come up with a reasonable method but it may not be the one you want.

The AccessiblePDF project shows how to use knowledge of your documents to take the base data and enhance it. It shows how to detect and insert structure based on your understanding of the document and supports the following structure types.

- Headers and Footers
- Tables
- Lists
- Sections
- Artifacts

It shows how to use the tags in a PDF document to detect and change content within it. This includes some code relevant to eSignLive signatures.

It contains code to show how to add content and tags to an already tagged document, merging these tags with the existing structure in the style of the base document.

Usefully it provides a method of extracting the tagged structure of any PDF document to an HTML-like format you can easily examine.

Each of these is handled by a separate routine. For example, text which lines up in rows and columns can be converted to a table structure. Text styles can be used to identify headings, and bulleted or numbered lists can be detected and tagged as lists.

Other code shows how to add your own custom tags and map them onto the standard PDF structure types, how to change tagged content such as images, and how to remove tags which no longer refer to any content.

This makes the project a good starting point if you need to remediate documents for screen readers or improve their reading order.
