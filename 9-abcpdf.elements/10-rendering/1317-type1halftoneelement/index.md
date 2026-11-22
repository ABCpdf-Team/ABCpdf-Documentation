# Type1HalftoneElement Class

This class represents the type 1 halftone dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 130, page 309.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=317)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 128, page 371.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.HalftoneElement`](../1316-halftoneelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type1HalftoneElement`

A type 1 halftone defines a screen using three values: a cell frequency, a rotation angle, and a spot function, rather than storing pre-computed dot data. The viewer calculates the exact dot pattern at render time by evaluating the spot function for every device pixel in the cell.

Frequency gives the number of halftone cells per inch in default user space. The rendered ruling on the output device depends on both this value and the device resolution. When AccurateScreens is not set, the viewer is free to round frequency and angle to values that align cleanly with device pixels, which avoids partial-pixel artefacts at the cost of some deviation from the requested screen.

Angle sets the tilt of the screen in degrees, measured counter-clockwise from horizontal. For single-colour work, 45 degrees is common because it minimises the visual regularity of the dot pattern. For multi-colour printing, different angles are used for each separation to reduce interference between screens.

The spot function controls the shape of the dot. It takes a pair of x and y values in the range -1 to 1 and returns a single number. Device pixels with lower return values switch on first as the tint level rises, so the function effectively describes the order in which pixels join the growing dot. A name such as SimpleDot or Ellipse selects a built-in function; a function object supplies custom behaviour.

When AccurateScreens is true, the viewer tries to preserve the exact Frequency and Angle values rather than snapping to the nearest device-pixel-aligned screen. This demands more computation and not all viewers or devices support it. If the device cannot comply, it falls back to the standard approximation.

TransferFunction adjusts tint values before the spot function is evaluated. A function object maps each input level in the range 0 to 1 to a corrected output level, allowing compensation for press dot gain or other device non-linearity. The name Identity passes tint values through without adjustment.

## Methods

| Method | Description |
| --- | --- |
| [Type1HalftoneElement](1-methods/01-type1halftoneelement.md) | Create a new Type1HalftoneElement. |
|  | [inherited methods...](../1316-halftoneelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryHalftoneName](2-properties/01-entryhalftonename.md) | Represents the "HalftoneName" entry of the type 1 halftone dictionary object. |
| [EntryFrequency](2-properties/02-entryfrequency.md) | Represents the "Frequency" entry of the type 1 halftone dictionary object. |
| [EntryAngle](2-properties/03-entryangle.md) | Represents the "Angle" entry of the type 1 halftone dictionary object. |
| [EntrySpotFunction](2-properties/04-entryspotfunction.md) | Represents the "SpotFunction" entry of the type 1 halftone dictionary object. |
| [EntryAccurateScreens](2-properties/05-entryaccuratescreens.md) | Represents the "AccurateScreens" entry of the type 1 halftone dictionary object. |
| [EntryTransferFunction](2-properties/06-entrytransferfunction.md) | Represents the "TransferFunction" entry of the type 1 halftone dictionary object. |
|  | [inherited properties...](../1316-halftoneelement/index.md) |
