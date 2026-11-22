# EntrySI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`SourceInformationElement`](../../1631-sourceinformationelement/index.md)`>` | null | No | Represents the "SI" entry of the web capture content set object. |

## Notes

Represents the "SI" entry of the web capture content set object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [SourceInformationElements](../../1631-sourceinformationelement/index.md).

If you read the specification you will see that an array of one [SourceInformationElement](../../1631-sourceinformationelement/index.md) may be represented as a single [SourceInformationElement](../../1631-sourceinformationelement/index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 352, page 622.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=630)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 388, page 801.](https://www.iso.org/standard/63534.html)

The SI entry holds a source information dictionary or array of them, each describing one source URL from which content was captured.
