# HalftoneElement Class

This class represents the halftone dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 308.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=316)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.HalftoneElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.Type10HalftoneElement`](../1321-type10halftoneelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type16HalftoneElement`](../1322-type16halftoneelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type1HalftoneElement`](../1317-type1halftoneelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type5HalftoneElement`](../1323-type5halftoneelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type6HalftoneElement`](../1318-type6halftoneelement/index.md)

Halftone dictionaries tell a PDF viewer how to convert smooth tonal values into the binary dot patterns that most printers require. Without halftoning, a device that can only put ink down or not would have no way to render grey or intermediate colour values.

The integer value of HalftoneType controls everything else about how the halftone works. Each value selects a completely different model, and the other entries in the dictionary only make sense in the context of that model.

Type 1 relies on a mathematical spot function to grow dots from the centre of each halftone cell outward. Types 6, 10, and 16 replace that calculation with a pre-computed table of threshold values stored as stream data. Type 5 is different again: it groups any number of the other types together so each ink channel can have its own screen.

A halftone dictionary can appear as a direct object embedded inside another structure, or as an indirect object referenced by its object number. Stream-based types (6, 10, and 16) are always stream objects, so the halftone data sits in the stream body and the dictionary keys sit in the stream dictionary.

When a halftone is applied to a device with more than one colorant, the same screen is used for all channels unless a type 5 dictionary assigns separate screens. Mismatched screens between channels can cause moire, so multi-ink workflows often need type 5.

HalftoneElement is the base class. You should always work with the subclass that matches the HalftoneType value actually present in the dictionary, since each subclass exposes only the entries that belong to that type.

## Methods

| Method | Description |
| --- | --- |
| [HalftoneElement](1-methods/01-halftoneelement.md) | Create a new HalftoneElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the halftone dictionary object. |
| [EntryHalftoneType](2-properties/02-entryhalftonetype.md) | Represents the "HalftoneType" entry of the halftone dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
