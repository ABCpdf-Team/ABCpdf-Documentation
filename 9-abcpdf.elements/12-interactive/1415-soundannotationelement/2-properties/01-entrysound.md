# EntrySound Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SoundObjectStreamElement`](../../../13-multimedia/1514-soundobjectstreamelement/index.md) | null | No | Represents the "Sound" entry of the sound annotation object. |

## Notes

Represents the "Sound" entry of the sound annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [SoundObjectStreamElement](../../../13-multimedia/1514-soundobjectstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 185, page 407.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=415)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 188, page 493.](https://www.iso.org/standard/63534.html)

The sound stream holds the raw audio data and encoding parameters including sample rate, number of channels, bits per sample, and encoding method.
