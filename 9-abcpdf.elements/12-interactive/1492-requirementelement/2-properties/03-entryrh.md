# EntryRH Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`RequirementHandlerElement`](../../1493-requirementhandlerelement/index.md)`>` | null | No | Represents the "RH" entry of the requirement dictionary object. |

## Notes

Represents the "RH" entry of the requirement dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [RequirementHandlerElements](../../1493-requirementhandlerelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 264, page 484.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=492)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 274, page 603.](https://www.iso.org/standard/63534.html)

The requirement handlers array lists handler dictionaries providing viewer-specific instructions for satisfying the requirement.
