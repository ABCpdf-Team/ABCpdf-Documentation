# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "F" entry of the related file set dictionary object. |

## Notes

Represents the "F" entry of the related file set dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

The F entry in a related file set maps the F path key to an array of file path strings identifying files related to the main referenced file under its default path.
