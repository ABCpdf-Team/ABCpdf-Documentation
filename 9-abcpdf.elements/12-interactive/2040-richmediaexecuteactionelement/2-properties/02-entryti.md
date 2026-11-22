# EntryTI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RichMediaInstanceElement`](../../2089-richmediainstanceelement/index.md) | null | No | Represents the "TI" entry of the rich-media-execute action object. |

## Notes

Represents the "TI" entry of the rich-media-execute action object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [RichMediaInstanceElement](../../2089-richmediainstanceelement/index.md).

For definitive details see:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.48a, page 40.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=40)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 222, page 523.](https://www.iso.org/standard/63534.html)

The target instance references the specific rich media instance within the annotation's content to which the command is directed. If absent the command is sent to the currently active instance.
