# EntryMode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Mode" entry of the movie activation dictionary object. |

## Notes

Represents the "Mode" entry of the movie activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Once" if no value has been provided.

This item may take one of the following valid values:.

- Once
- Open
- Repeat
- Palindrome

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 509.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=517)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 636.](https://www.iso.org/standard/63534.html)

The Mode entry controls what happens at the end of playback: Once to play once and stop, Open to play once and leave the last frame visible, Repeat to loop continuously, and Palindrome to play forward and backward alternately.
