# TextStreamElement Class

This class represents a text stream.

PDF streams are simply stores of raw data. So a text stream is simply a PDF stream that contains text data.

This class is always an indirect object because CollectionElement.EntryResources, NameTreeNodeElement\<T>.EntryKids, NumberTreeNodeElement\<T>.EntryKids, NavigatorElement.EntryResources and NavigatorElement.EntryStrings require it to be so.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Section 7.9.3, page 87.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=95)

A text stream element wraps a stream that carries text data. Text streams are used in PDF for content that must be stored as a sequence of bytes rather than as a PDF string object, typically because the content is large or requires compression.

The stream may use any of the standard PDF filters for compression or encoding. The stream dictionary follows the standard stream dictionary conventions with the text data as the stream body.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.StreamElement`](../1028-streamelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.TextStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [TextStreamElement](1-methods/01-textstreamelement.md) | Create a new TextStreamElement. |
|  | [inherited methods...](../1028-streamelement/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../1028-streamelement/index.md) |
