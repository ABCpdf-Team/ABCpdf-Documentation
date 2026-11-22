# Type5HalftoneElement Class

This class represents the type 5 halftone dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 134, page 315.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=323)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 132, page 377.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.HalftoneElement`](../1316-halftoneelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type5HalftoneElement`

A type 5 halftone is a container that groups separate halftone dictionaries together, one for each colorant the output device uses. This makes it possible to assign different screen rulings, angles, or dot shapes to different ink channels within a single halftone object.

The dictionary keys are colorant names. Each name maps to a complete halftone dictionary of any type other than type 5. When the viewer processes a given colorant, it looks up that colorant name in the type 5 dictionary and applies whichever sub-dictionary it finds.

The Default entry holds the fallback screen. Any colorant that does not have its own named entry will use Default instead. This entry must be present and must not itself be a type 5 dictionary.

Type 5 is the standard mechanism for avoiding moire in multi-ink printing. Offset printing separations are typically screened at different angles and type 5 is how those per-channel settings are recorded in a PDF file.

## Methods

| Method | Description |
| --- | --- |
| [Type5HalftoneElement](1-methods/01-type5halftoneelement.md) | Create a new Type5HalftoneElement. |
|  | [inherited methods...](../1316-halftoneelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryHalftoneName](2-properties/01-entryhalftonename.md) | Represents the "HalftoneName" entry of the type 5 halftone dictionary object. |
| [EntryDefault](2-properties/02-entrydefault.md) | Represents the "Default" entry of the type 5 halftone dictionary object. |
|  | [inherited properties...](../1316-halftoneelement/index.md) |
