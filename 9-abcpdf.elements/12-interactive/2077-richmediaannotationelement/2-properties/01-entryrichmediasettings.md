# EntryRichMediaSettings Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RichMediaSettingsElement`](../../2078-richmediasettingselement/index.md) | null | No | Represents the "RichMediaSettings" entry of the richmedia annotation object. |

## Notes

Represents the "RichMediaSettings" entry of the richmedia annotation object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [RichMediaSettingsElement](../../2078-richmediasettingselement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.49, page 77.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=77)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 333, page 696.](https://www.iso.org/standard/63534.html)

The settings dictionary controls when the media activates and deactivates and what initial state it is in when activated. When absent the viewer uses default activation and deactivation behaviour.
