# EntryParams Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RichMediaParamsElement`](../../2090-richmediaparamselement/index.md) | null | No | Represents the "Params" entry of the richmediainstance dictionary object. |

## Notes

Represents the "Params" entry of the richmediainstance dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [RichMediaParamsElement](../../2090-richmediaparamselement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51b, page 89.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=89)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 343, page 706.](https://www.iso.org/standard/63534.html)

The params entry holds a rich media parameters dictionary specific to the media subtype. For Flash it supplies FlashVars; for 3D it supplies binding instructions and cue points.
