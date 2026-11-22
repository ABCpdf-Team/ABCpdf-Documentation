# ObjectStreamElement Class

This class represents the object stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 16, page 46.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=54)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 16, page 61.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

An object stream is a PDF stream that contains a sequence of indirect objects compressed together. This structure, introduced in PDF 1.5, allows the cross-reference stream to index objects by their position within the object stream, achieving better compression than storing each object individually.

The N entry gives the number of objects stored in the stream. The First entry gives the byte offset within the decoded stream body where the object data begins, after the header section that lists object numbers and their offsets.

The header section consists of N pairs of integers: each pair gives an object number followed by the byte offset of that object relative to First. Objects are stored in the body section in the same order as listed in the header.

Object streams cannot contain stream objects, the document catalog, encrypt dictionaries, or objects with generation numbers other than zero. These objects must remain as conventional indirect objects.

The Extends entry references another object stream that this stream logically extends. This allows a large set of compressed objects to be spread across multiple streams while sharing a single set of compressed symbol tables.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ObjectStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [ObjectStreamElement](1-methods/01-objectstreamelement.md) | Create a new ObjectStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the object stream dictionary object. |
| [EntryN](2-properties/03-entryn.md) | Represents the "N" entry of the object stream dictionary object. |
| [EntryFirst](2-properties/04-entryfirst.md) | Represents the "First" entry of the object stream dictionary object. |
| [EntryExtends](2-properties/05-entryextends.md) | Represents the "Extends" entry of the object stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
