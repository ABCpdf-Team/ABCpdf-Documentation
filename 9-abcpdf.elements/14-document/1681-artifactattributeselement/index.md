# ArtifactAttributesElement Class

This class represents the artifact attributes. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 385, page 787.](https://www.iso.org/standard/63534.html)

An artifact attributes dictionary carries properties associated with a marked artifact in a PDF content stream. Artifacts are content elements that are not part of the logical document structure, such as headers, footers, page numbers, and decorative elements.

The BBox entry gives the bounding box of the artifact in default user space. Accessibility tools and reflow engines use this to identify and exclude artifact content from the logical reading order.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AttributesElement`](../1575-attributeselement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ArtifactAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [ArtifactAttributesElement](1-methods/01-artifactattributeselement.md) | Create a new ArtifactAttributesElement. |
|  | [inherited methods...](../1575-attributeselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the artifact attributes object. |
| [EntryBBox](2-properties/02-entrybbox.md) | Represents the "BBox" entry of the artifact attributes object. |
| [EntrySubtype](2-properties/03-entrysubtype.md) | Represents the "Subtype" entry of the artifact attributes object. |
|  | [inherited properties...](../1575-attributeselement/index.md) |
