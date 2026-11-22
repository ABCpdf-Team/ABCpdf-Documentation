# SubmitFormActionElement Class

This class represents the submit-form action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 236, page 451.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=459)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 239, page 548.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.SubmitFormActionElement`

A submit-form action sends form field values to a server-side URL. The F entry holds the URL. The Fields entry lists included or excluded fields. The Flags integer controls submission format (URL-encoded FDF, XFDF, HTML, or full PDF).

The CharSet entry (PDF 2.0) specifies the character encoding for submitted text data.

## Methods

| Method | Description |
| --- | --- |
| [SubmitFormActionElement](1-methods/01-submitformactionelement.md) | Create a new SubmitFormActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the submit-form action object. |
| [EntryFields](2-properties/02-entryfields.md) | Represents the "Fields" entry of the submit-form action object. |
| [EntryFlags](2-properties/03-entryflags.md) | Represents the "Flags" entry of the submit-form action object. |
| [EntryCharSet](2-properties/04-entrycharset.md) | Represents the "CharSet" entry of the submit-form action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
