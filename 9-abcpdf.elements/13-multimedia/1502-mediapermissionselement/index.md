# MediaPermissionsElement Class

This class represents the media permissions dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 275, page 494.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=502)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 286, page 618.](https://www.iso.org/standard/63534.html)

A media permissions dictionary controls restrictions on how media content may be accessed and played back. The TF entry specifies whether and how the media player may write temporary files when playing the media.

Temporary file controls are important for media that a player must decompress or pre-process before display. The permissions dictionary allows authors to restrict this behaviour for security or licensing reasons.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MediaPermissionsElement`

## Methods

| Method | Description |
| --- | --- |
| [MediaPermissionsElement](1-methods/01-mediapermissionselement.md) | Create a new MediaPermissionsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the media permissions dictionary object. |
| [EntryTF](2-properties/02-entrytf.md) | Represents the "TF" entry of the media permissions dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
