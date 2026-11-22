# ObjectReferenceElement Class

This class represents the object reference dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 325, page 564.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=572)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 358, page 730.](https://www.iso.org/standard/63534.html)

An object reference links a structure element to a PDF object such as an annotation or XObject. It is used when the element content is represented by a self-contained object rather than by marked content in a content stream.

The Pg entry references the page on which the object appears. It is required when the referenced object does not carry its own StructParent entry.

The Obj entry is an indirect reference to the PDF object constituting this part of the structure element content, typically an annotation dictionary or image XObject.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ObjectReferenceElement`

## Methods

| Method | Description |
| --- | --- |
| [ObjectReferenceElement](1-methods/01-objectreferenceelement.md) | Create a new ObjectReferenceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the object reference dictionary object. |
| [EntryPg](2-properties/02-entrypg.md) | Represents the "Pg" entry of the object reference dictionary object. |
| [EntryObj](2-properties/03-entryobj.md) | Represents the "Obj" entry of the object reference dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
