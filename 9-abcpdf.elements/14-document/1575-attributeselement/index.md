# AttributesElement Class

This class represents the attribute object dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 327, page 567.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=575)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 360, page 734.](https://www.iso.org/standard/63534.html)

An attributes element carries layout and other properties associated with a structure element. Attributes may be stored as a dictionary, as a stream for large attribute sets, or as an array combining multiple attribute objects.

The O entry names the attribute owner, identifying the specification that defines the attribute names and values. Standard owners include Layout, List, Table, PrintField, and UserProperties.

The NS entry associates the attribute dictionary with a namespace, used when the attribute owner corresponds to a namespace defined in the structure tree.

Attribute values describe visual and structural properties such as placement, spacing, borders, color, table spanning, and list numbering style.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AttributesElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.ArtifactAttributesElement`](../1681-artifactattributeselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.LinkAttributesElement`](../../07-syntax/0015-linkattributeselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.StandardStructureAttributesElement`](../1601-standardstructureattributeselement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.UserPropertiesAttributesElement`](../1577-userpropertiesattributeselement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [AttributesElement](1-methods/01-attributeselement.md) | Create a new AttributesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryO](2-properties/02-entryo.md) | Represents the "O" entry of the attribute object dictionary object. |
| [EntryNS](2-properties/03-entryns.md) | Represents the "NS" entry of the attribute object dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
