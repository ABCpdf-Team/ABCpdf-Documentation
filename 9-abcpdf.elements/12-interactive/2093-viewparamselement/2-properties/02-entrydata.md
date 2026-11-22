# EntryData Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Data" entry of the view params dictionary object. |

## Notes

Represents the "Data" entry of the view params dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51g, page 93.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=93)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 345, page 707.](https://www.iso.org/standard/63534.html)

The data entry holds the view state in a format specific to the media type. For 3D content it encodes the camera position, orientation, and projection parameters.
