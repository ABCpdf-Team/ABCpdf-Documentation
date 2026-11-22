# EntrySubjectDN Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "SubjectDN" entry of the certificate seed value dictionary object. |

## Notes

Represents the "SubjectDN" entry of the certificate seed value dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 450.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=458)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 546.](https://www.iso.org/standard/63534.html)

Each dictionary in SubjectDN maps distinguished name attribute OIDs to required values. The signing certificate's subject distinguished name must contain all listed attributes with matching values.
