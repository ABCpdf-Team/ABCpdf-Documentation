# EntryExtends Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ObjectStreamElement`](../index.md) | null | No | Represents the "Extends" entry of the object stream dictionary object. |

## Notes

Represents the "Extends" entry of the object stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [ObjectStreamElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 16, page 46.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=54)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 16, page 61.](https://www.iso.org/standard/63534.html)

The Extends entry references another object stream that this stream logically extends. Both streams share the same compressed symbol context, which allows the Flate encoder to achieve better compression across the combined set of objects.
