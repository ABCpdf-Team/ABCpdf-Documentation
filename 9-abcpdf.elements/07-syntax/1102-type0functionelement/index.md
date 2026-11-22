# Type0FunctionElement Class

This class represents the type 0 function dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 39, page 94.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=102)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 39, page 124.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 0 function, also called a sampled function, encodes a multi-dimensional table of output values in a stream. Values not in the table are computed by interpolating between adjacent table entries.

The Size entry is an array giving the number of samples along each input dimension. The total number of sample sets in the stream is the product of all Size values.

The BitsPerSample entry gives the bit depth of each sample value in the stream. Values may be 1, 2, 4, 8, 12, 16, 24, or 32 bits. Samples are packed in the stream without padding between values.

The Order entry controls the interpolation algorithm. A value of 1 selects linear interpolation between adjacent samples. A value of 3 selects cubic spline interpolation, which produces smoother results at the cost of more computation.

The Encode array maps each input value from the domain to a sample index. The Decode array maps each raw sample integer to an output value in the output range.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FunctionElement`](../1101-functionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type0FunctionElement`

## Methods

| Method | Description |
| --- | --- |
| [Type0FunctionElement](1-methods/01-type0functionelement.md) | Create a new Type0FunctionElement. |
|  | [inherited methods...](../1101-functionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntrySize](2-properties/02-entrysize.md) | Represents the "Size" entry of the type 0 function dictionary object. |
| [EntryBitsPerSample](2-properties/03-entrybitspersample.md) | Represents the "BitsPerSample" entry of the type 0 function dictionary object. |
| [EntryOrder](2-properties/04-entryorder.md) | Represents the "Order" entry of the type 0 function dictionary object. |
| [EntryEncode](2-properties/05-entryencode.md) | Represents the "Encode" entry of the type 0 function dictionary object. |
| [EntryDecode](2-properties/06-entrydecode.md) | Represents the "Decode" entry of the type 0 function dictionary object. |
|  | [inherited properties...](../1101-functionelement/index.md) |
