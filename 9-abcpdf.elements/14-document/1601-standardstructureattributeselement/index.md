# StandardStructureAttributesElement Class

This class represents the standard structure attributes. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 593.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=601)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 347, page 608.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=616)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 382, page 784.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 348, page 609.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=617)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 383, page 785.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 349, page 610.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=618)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 384, page 785.](https://www.iso.org/standard/63534.html)

The standard structure attributes dictionary carries attributes defined by the PDF specification for structure elements. These describe semantic and presentational properties and are owned by the Layout, List, or Table attribute owners.

List attributes control numbering style, whether a list continues from a previous one, and the ID of the list it continues from.

Table attributes control row and column spanning, header cell associations, header scope, table summary, and abbreviated header content.

The Role attribute gives a more specific semantic description of the element function. The Checked attribute records the state of a checkbox or radio button. The Desc attribute provides an accessibility description.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AttributesElement`](../1575-attributeselement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.StandardStructureAttributesElement`  
`             `[`WebSupergoo.ABCpdf14.Elements.StandardLayoutAttributesElement`](../1605-standardlayoutattributeselement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [StandardStructureAttributesElement](1-methods/01-standardstructureattributeselement.md) | Create a new StandardStructureAttributesElement. |
|  | [inherited methods...](../1575-attributeselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryListNumbering](2-properties/01-entrylistnumbering.md) | Represents the "ListNumbering" entry of the standard structure attributes object. |
| [EntryContinuedList](2-properties/02-entrycontinuedlist.md) | Represents the "ContinuedList" entry of the standard structure attributes object. |
| [EntryContinuedFrom](2-properties/03-entrycontinuedfrom.md) | Represents the "ContinuedFrom" entry of the standard structure attributes object. |
| [EntryRole](2-properties/04-entryrole.md) | Represents the "Role" entry of the standard structure attributes object. |
| [Entry_checked](2-properties/05-entry_checked.md) | Represents the "checked" entry of the standard structure attributes object. |
| [EntryChecked](2-properties/06-entrychecked.md) | Represents the "Checked" entry of the standard structure attributes object. |
| [EntryDesc](2-properties/07-entrydesc.md) | Represents the "Desc" entry of the standard structure attributes object. |
| [EntryRowSpan](2-properties/08-entryrowspan.md) | Represents the "RowSpan" entry of the standard structure attributes object. |
| [EntryColSpan](2-properties/09-entrycolspan.md) | Represents the "ColSpan" entry of the standard structure attributes object. |
| [EntryHeaders](2-properties/10-entryheaders.md) | Represents the "Headers" entry of the standard structure attributes object. |
| [EntryScope](2-properties/11-entryscope.md) | Represents the "Scope" entry of the standard structure attributes object. |
| [EntrySummary](2-properties/12-entrysummary.md) | Represents the "Summary" entry of the standard structure attributes object. |
| [EntryShort](2-properties/13-entryshort.md) | Represents the "Short" entry of the standard structure attributes object. |
|  | [inherited properties...](../1575-attributeselement/index.md) |
