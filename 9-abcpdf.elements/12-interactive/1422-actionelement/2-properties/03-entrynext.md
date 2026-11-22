# EntryNext Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`ActionElement`](../index.md)`>` | null | No | Represents the "Next" entry of the action dictionary object. |

## Notes

Represents the "Next" entry of the action dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains an array which contains [ActionElements](../index.md).

If you read the specification you will see that an array of one [ActionElement](../index.md) may be represented as a single [ActionElement](../index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 193, page 414.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=422)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 196, page 503.](https://www.iso.org/standard/63534.html)

After the current action completes the viewer executes the action or actions in Next in sequence. Next can be a single action dictionary or an array, enabling complex multi-step action chains.
