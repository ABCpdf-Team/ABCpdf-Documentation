# EntryVolume Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "Volume" entry of the movie activation dictionary object. |

## Notes

Represents the "Volume" entry of the movie activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 1.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 635.](https://www.iso.org/standard/63534.html)

The Volume entry holds the audio volume as a real number from 0.0 (silent) to 1.0 (full volume). Values greater than 1.0 are not standard and may be clamped by the player.
