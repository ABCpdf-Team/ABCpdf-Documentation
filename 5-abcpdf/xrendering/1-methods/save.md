# Save Method

Renders and saves the current area of the current page.

## Syntax

[C#]

```csharp
void Save(string path)void Save(string name, Stream stream)
```

## Params

| **Name** | **Description** |
| --- | --- |
| path | The destination file path. |
| name | A dummy file name used to determine the type of image required. |
| stream | The destination stream. |

## Notes

Use this method to render the PDF.

The output is a render of the current [Doc.Rect](doc/2-properties/rect.md) of the current [Doc.Page](doc/2-properties/page.md). Typically you want to align the Doc.Rect with the [Doc.CropBox](doc/2-properties/cropbox.md) as this is the part of page that most tools use as the visible area.

Any page rotation specified in the PDF page is applied so that the output render is the correct orientation. This may mean that the output width and height are transposed copies of the width and height as specified in the Doc.Rect.

The file path extension determines the format of the output. The file name extensions which may be used are .TIF, .TIFF, .JPG, .GIF, .PNG, .BMP, .JP2, .PSD, .EMF, .PS, .EPS, .WEBP, .HEIF, .DDS and .WDP.

JP2 is used for the JPEG 2000 format. EMF is a vector rather than raster format which can be useful when you require resolution independence and smaller files. PS is raw vector PostScript-compatible output. EPS is the Encapsulated Postscript format. The particular type of EPS produced by ABCpdf conforms to the DSC (Document Structuring Conventions) standard, which is a subset of EPS intended to make EPS files more usable. WebP is a high compression image format designed by google. HEIF is High Efficiency Image File Format based around MPEG. DDS is DirectDraw Surface designed for decompression by GPUs. WDP is JPEG extended range - a Microsoft technology often used in XPS documents.

Our BMP export module supports alpha (SaveAlpha), embedded color profiles (IccOutput), indexed color in various bit depths (ColorSpace & Palette) in both compressed and non-compressed formats (SaveCompression).

In addition you can render to any of the file types specified as part of the GetText method - .TXT, .SVG, .SVG+ and .SVG+2.

---

### Why is ABCpdf .NET rendering the best?

ABCpdf .NET started as a PDF generation library. However a few versions in we recognized the need for a professional rendering engine.

PDF rendering is far more complex than the type of rendering you see in System.Drawing, WPF, or OpenGL. As such, we decided to do things properly: we purchased and merged in a dedicated PostScript engine. The result is a tool designed from the ground up for both generation and rendering and it excels at both. For this reason ABCpdf provides best-in-class performance for both types of operation.

Here are just a few practical reasons why ABCpdf .NET PDF rendering is superior to virtually any other library you will find:

ABCpdf's Superiority: ABCpdf was built with modern graphic design and pre-press workflows in mind. It has robust, native support for a wider array of color spaces critical for high-fidelity color output.

DeviceN and NChannel Color Spaces: strong support for these complex color spaces, which are used for custom multi-color inks (e.g., Pantone spot colors) beyond standard CMYK.

ICC Profile Handling: Its rendering engine is finely tuned to respect and correctly apply ICC (International Color Consortium) profiles embedded within PDFs. This is paramount for accurate color management across different devices (monitors, printers).

Lab Color Space: Support for CIE Lab color, which is device-independent and designed to approximate human vision, is a hallmark of an advanced color rendering system

ABCpdf's Superiority: A dedicated renderer gives you explicit control over the output bit depth, which is crucial for preserving image quality in professional workflows.

High Bit-Depth Output: ABCpdf allows you to render directly to high bit-depth formats (e.g., 16-bit per channel PNGs or TIFFs). This is essential for medical imaging (DICOM), scientific analysis, archival preservation, and any application where extensive image manipulation (color grading, sharpening) will happen after rendering. It prevents banding and preserves a much wider dynamic range of data from the original PDF.

ABCpdf's Superiority: ABCpdf's output format support is tailored for the needs of graphics professionals and automated workflows.

TIFF with Options: This is a key differentiator. ABCpdf can output to multi-page TIFFs and, more importantly, supports various TIFF compression schemes specifically important for industry (e.g., CCITT Group 4 for monochrome faxes, LZW, etc.).

Wider Raster Format Support: It includes built-in support for a broad range of niche or professional formats out-of-the-box. If you want 16 bit Lab PSD output or other esoteric color combinations ABCpdf is your solution. Indeed probably your only solution!

Direct Rendering: The API is designed to render directly to these formats efficiently

ABCpdf's Superiority: ABCpdf can output separations. This means it can render each individual ink color plate (Cyan, Magenta, Yellow, Black, and most importantly, spot color plates like Pantone 285 C) as named inks in TIFF output.

Why this matters: This is a non-negotiable requirement in professional printing. Presses use separate plates for each ink. The ability to pre-flight a PDF by rendering and inspecting each separation is a critical workflow tool.

---

## Example

Also see example code in:

* [ABCpdf PDF Rendering Example](4-examples/19-rendering.md)
* [XRendering AntiAliasImages Property](2-properties/antialiasimages.md)
* [XRendering AntiAliasPolygons Property](2-properties/antialiaspolygons.md)
* [XRendering AntiAliasText Property](2-properties/antialiastext.md)
* [XRendering ColorSpace Property](2-properties/colorspace.md)
* [XRendering DefaultHalftone Property](2-properties/defaulthalftone.md)
* [XRendering DrawAnnotations Property](2-properties/drawannotations.md)
* [XRendering IccCmyk Property](2-properties/icccmyk.md)
* [XRendering Overprint Property](2-properties/overprint.md)
* [XRendering SaveAlpha Property](2-properties/savealpha.md)
* [XRendering SaveCompression Property](2-properties/savecompression.md)
* [XRendering SaveQuality Property](2-properties/savequality.md).
