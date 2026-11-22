# EntrySound Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SoundObjectStreamElement`](../../../13-multimedia/1514-soundobjectstreamelement/index.md) | null | No | Represents the "Sound" entry of the sound action object. |

## Notes

Represents the "Sound" entry of the sound action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [SoundObjectStreamElement](../../../13-multimedia/1514-soundobjectstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 208, page 425.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=433)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 212, page 516.](https://www.iso.org/standard/63534.html)

The sound stream holds the raw audio data and its encoding parameters: sample rate, number of channels, bits per sample, and encoding method.
