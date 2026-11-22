# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "R" entry of the web capture image set object. |

## Notes

Represents the "R" entry of the web capture image set object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

If you read the specification you will see that an array of one integer may be represented as a single integer rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 354, page 622.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=630)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 390, page 802.](https://www.iso.org/standard/63534.html)

The R entry holds an array of reference dictionaries, each mapping a source URL to an image XObject captured from it, preserving the association between each image and its original web address.
