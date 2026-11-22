# EntryContents Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`StreamElement`](../../1028-streamelement/index.md)`>` | null | No | Represents the "Contents" entry of the page object object. |

## Notes

Represents the "Contents" entry of the page object object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [StreamElements](../../1028-streamelement/index.md).

If you read the specification you will see that an array of one [StreamElement](../../1028-streamelement/index.md) may be represented as a single [StreamElement](../../1028-streamelement/index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 78.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=86)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 104.](https://www.iso.org/standard/63534.html)

The Contents entry references the page's content stream or an array of content stream references. When an array is given, the streams are treated as if their decoded bytes were concatenated in order.

Content streams contain the PDF operators and operands that describe the page's visual appearance. Each stream begins in the default graphics state; the state does not carry between separate streams in an array.
