# EntrySpeed Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "Speed" entry of the richmediaanimation dictionary object. |

## Notes

Represents the "Speed" entry of the richmediaanimation dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a double representing a PDF numeric object.

It should have a positive value.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.50c, page 81.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=81)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 337, page 700.](https://www.iso.org/standard/63534.html)

The speed multiplier scales the animation's native playback rate. Values greater than one increase speed; values between zero and one slow it down.
