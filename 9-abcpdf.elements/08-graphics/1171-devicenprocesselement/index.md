# DeviceNProcessElement Class

This class represents the devicen process dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 72, page 163.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=171)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 71, page 205.](https://www.iso.org/standard/63534.html)

The DeviceN process dictionary identifies which components of a DeviceN color space correspond to standard process colorants, and names the process color space those components belong to.

The ColorSpace entry names the process color space, such as DeviceCMYK, to which the identified components map. This connection allows a reader to handle process components using its standard process color pipeline.

The Components entry lists the names of those DeviceN components that are process colorants. Components absent from this list are treated as spot colorants with no process equivalent.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DeviceNProcessElement`

## Methods

| Method | Description |
| --- | --- |
| [DeviceNProcessElement](1-methods/01-devicenprocesselement.md) | Create a new DeviceNProcessElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryColorSpace](2-properties/01-entrycolorspace.md) | Represents the "ColorSpace" entry of the devicen process dictionary object. |
| [EntryComponents](2-properties/02-entrycomponents.md) | Represents the "Components" entry of the devicen process dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
