# AppearanceElement Class

This class represents the appearance dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 168, page 389.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=397)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 170, page 472.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AppearanceElement`

An appearance dictionary holds the form XObject streams defining how an annotation looks. The three entries N, R, and D correspond to the normal, rollover, and down visual states.

Each entry can be either a single form XObject or a sub-dictionary of named form XObjects, used when the annotation has multiple appearance states such as a checkbox with on and off appearances.

The current appearance state is selected by the AS entry in the parent annotation dictionary.

## Methods

| Method | Description |
| --- | --- |
| [AppearanceElement](1-methods/01-appearanceelement.md) | Create a new AppearanceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryN](2-properties/01-entryn.md) | Represents the "N" entry of the appearance dictionary object. |
| [EntryR](2-properties/02-entryr.md) | Represents the "R" entry of the appearance dictionary object. |
| [EntryD](2-properties/03-entryd.md) | Represents the "D" entry of the appearance dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
