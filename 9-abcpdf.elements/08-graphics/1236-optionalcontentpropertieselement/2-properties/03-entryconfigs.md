# EntryConfigs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`OptionalContentConfigElement`](../../1237-optionalcontentconfigelement/index.md)`>` | null | No | Represents the "Configs" entry of the optional content properties dictionary object. |

## Notes

Represents the "Configs" entry of the optional content properties dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [OptionalContentConfigElements](../../1237-optionalcontentconfigelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 100, page 229.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=237)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 98, page 281.](https://www.iso.org/standard/63534.html)

The Configs array lists additional optional content configuration dictionaries beyond the default. Each configuration provides an independent set of group states and layer panel settings. Users or applications may activate an alternative configuration to change the document view.
