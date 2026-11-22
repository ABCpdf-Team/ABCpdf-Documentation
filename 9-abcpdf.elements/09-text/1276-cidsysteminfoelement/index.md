# CIDSystemInfoElement Class

This class represents the cidsysteminfo dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 116, page 268.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=276)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 114, page 326.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CIDSystemInfoElement`

A CIDSystemInfo dictionary identifies the character collection that a CIDFont or CMap is designed for. It ties the font or CMap to a specific registry, ordering, and supplement level, which together define the set of character identifiers the font or CMap can handle.

Registry names the organisation that defined the collection, such as Adobe. Ordering names the specific character set within that registry, such as Japan1 or GB1. Supplement gives the revision number of the collection; higher supplement values add characters to lower ones.

When a CIDFont and a CMap are used together in a type 0 font, their CIDSystemInfo values must be compatible. The Registry and Ordering strings must match exactly; the CMap supplement may be less than or equal to the CIDFont supplement.

CIDSystemInfo is a direct dictionary object, not an indirect one. It appears both in CIDFont dictionaries and in CMap stream dictionaries.

## Methods

| Method | Description |
| --- | --- |
| [CIDSystemInfoElement](1-methods/01-cidsysteminfoelement.md) | Create a new CIDSystemInfoElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryRegistry](2-properties/01-entryregistry.md) | Represents the "Registry" entry of the cidsysteminfo dictionary object. |
| [EntryOrdering](2-properties/02-entryordering.md) | Represents the "Ordering" entry of the cidsysteminfo dictionary object. |
| [EntrySupplement](2-properties/03-entrysupplement.md) | Represents the "Supplement" entry of the cidsysteminfo dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
