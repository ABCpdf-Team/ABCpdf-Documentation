# EntryC Property

## Notes

Represents the "C" entry of the sound object stream object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 294, page 506.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 305, page 633.

The C entry gives the number of audio channels: 1 for mono and 2 for stereo. For stereo data, samples for the left and right channels are interleaved in the stream.
