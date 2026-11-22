# CMapStreamElement Class

This class represents the cmap stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 120, page 277.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=285)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 118, page 336.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CMapStreamElement`

A CMap stream defines a mapping from character codes to character identifiers. In a type 0 composite font, the Encoding entry points to either a predefined CMap name or a CMap stream. The stream body holds the CMap program in a PostScript-like syntax that lists the code mappings.

CMapName gives the name of the CMap as it would be used to reference it. This name appears in the CMap program body as well as in the stream dictionary.

CIDSystemInfo identifies the character collection the CMap targets. It must be compatible with the CIDSystemInfo of the CIDFont it is paired with.

WMode controls writing direction. A value of 0 selects horizontal writing; a value of 1 selects vertical. The default is 0.

UseCMap names or references another CMap that this one extends. Character codes not handled by this CMap fall through to the referenced one. This allows a compact CMap to cover only the differences from a standard mapping.

## Methods

| Method | Description |
| --- | --- |
| [CMapStreamElement](1-methods/01-cmapstreamelement.md) | Create a new CMapStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the cmap stream dictionary object. |
| [EntryCMapName](2-properties/03-entrycmapname.md) | Represents the "CMapName" entry of the cmap stream dictionary object. |
| [EntryCIDSystemInfo](2-properties/04-entrycidsysteminfo.md) | Represents the "CIDSystemInfo" entry of the cmap stream dictionary object. |
| [EntryWMode](2-properties/05-entrywmode.md) | Represents the "WMode" entry of the cmap stream dictionary object. |
| [EntryUseCMap](2-properties/06-entryusecmap.md) | Represents the "UseCMap" entry of the cmap stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
