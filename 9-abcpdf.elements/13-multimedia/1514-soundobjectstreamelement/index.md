# SoundObjectStreamElement Class

This class represents the sound object stream. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 294, page 506.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=514)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 305, page 633.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A sound object stream carries audio data for playback using the legacy sound action mechanism. The stream body contains the raw audio samples according to the encoding specified in the stream dictionary.

The R entry gives the sampling rate in samples per second. The C entry gives the number of sound channels: 1 for mono, 2 for stereo. The B entry gives the number of bits per sample.

The E entry names the encoding format: Raw for uncompressed samples, Signed for signed linear samples, muLaw for mu-law compressed audio, or ALaw for A-law compressed audio.

The CO and CP entries carry codec-specific configuration. CO names the codec and CP holds parameters for that codec when a non-standard encoding is used.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SoundObjectStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [SoundObjectStreamElement](1-methods/01-soundobjectstreamelement.md) | Create a new SoundObjectStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the sound object stream object. |
| [EntryR](2-properties/03-entryr.md) | Represents the "R" entry of the sound object stream object. |
| [EntryC](2-properties/04-entryc.md) | Represents the "C" entry of the sound object stream object. |
| [EntryB](2-properties/05-entryb.md) | Represents the "B" entry of the sound object stream object. |
| [EntryE](2-properties/06-entrye.md) | Represents the "E" entry of the sound object stream object. |
| [EntryCO](2-properties/07-entryco.md) | Represents the "CO" entry of the sound object stream object. |
| [EntryCP](2-properties/08-entrycp.md) | Represents the "CP" entry of the sound object stream object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
