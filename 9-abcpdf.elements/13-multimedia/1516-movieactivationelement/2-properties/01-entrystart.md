# EntryStart Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Start" entry of the movie activation dictionary object. |

## Notes

Represents the "Start" entry of the movie activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1\) An integer representing a PDF numeric object.

It should have a minimum value of 0.

2\) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

3\) An array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 635.](https://www.iso.org/standard/63534.html)

The Start entry gives the starting time within the movie file as a time value. Playback begins at this position rather than at the beginning of the file.
