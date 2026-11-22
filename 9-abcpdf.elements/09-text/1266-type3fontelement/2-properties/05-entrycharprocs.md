# EntryCharProcs Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`StreamElement`](../../../07-syntax/1028-streamelement/index.md)`>` | null | No | Represents the "CharProcs" entry of the type 3 font dictionary object. |

## Notes

Represents the "CharProcs" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=267)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 314.](https://www.iso.org/standard/63534.html)

The dictionary maps glyph names to content streams. Each stream defines how to paint one glyph. The stream must begin with either a d0 or d1 operator that reports the glyph width and, for d1, the bounding box.

The glyph stream can use any PDF drawing operators to paint the glyph shape, including paths, images, and shading. The Resources entry in the font dictionary lists any external resources these streams need.
