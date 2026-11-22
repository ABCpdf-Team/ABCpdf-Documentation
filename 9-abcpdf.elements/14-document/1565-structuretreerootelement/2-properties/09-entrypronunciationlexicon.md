# EntryPronunciationLexicon Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md)`>` | null | No | Represents the "PronunciationLexicon" entry of the structure tree root object. |

## Notes

Represents the "PronunciationLexicon" entry of the structure tree root object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [FileSpecificationElements](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 322, page 557.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=565)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 354, page 720.](https://www.iso.org/standard/63534.html)

The PronunciationLexicon entry holds an array of file specifications for pronunciation lexicon files in PLS or similar format. Text-to-speech engines use these to pronounce words and names correctly.
