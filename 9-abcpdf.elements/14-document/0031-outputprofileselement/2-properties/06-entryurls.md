# EntryURLs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "URLs" entry of the destoutputprofileref dictionary object. |

## Notes

Represents the "URLs" entry of the destoutputprofileref dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 402, page 817.](https://www.iso.org/standard/63534.html)

The URLs entry holds an array of URL strings where the ICC profile can be obtained externally. A reader unable to use the embedded profile may attempt retrieval from one of these locations.
