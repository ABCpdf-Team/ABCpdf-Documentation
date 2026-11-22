# EntryRecipients Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Recipients" entry of the public-key security handler crypt filter object. |

## Notes

Represents the "Recipients" entry of the public-key security handler crypt filter object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 27, page 69.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=77)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 27, page 91.](https://www.iso.org/standard/63534.html)

The Recipients entry in a public-key crypt filter holds the per-recipient CMS EnvelopedData structures for the objects protected by this specific filter. This allows different groups of recipients to access different parts of the same document.
