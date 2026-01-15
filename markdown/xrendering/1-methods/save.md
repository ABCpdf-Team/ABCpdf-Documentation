# Save Method

Renders and saves the current area of the current page.

## Syntax

```csharp
void Save(string path)
void Save(string name, Stream stream)
```

## Params

| Name | Description |
| --- | --- |
| path | The destination file path. |
| name | A dummy file name used to determine the type of image required. |
| stream | The destination stream. |

## Notes

Use this method to render the PDF.

The output is a render of the current Doc.Rect of the current Doc.Page. Typically you want to align the Doc.Rect with the Doc.CropBox as this is the part of page that most tools use as the visible area.

Any page rotation specified in the PDF page is applied so that the output render is the correct orientation. This may mean that the output width and height are transposed copies of the width and height as specified in the Doc.Rect.

The file path extension determines the format of the output. The file name extensions which may be used are .TIF, .TIFF, .JPG, .GIF, .PNG, .BMP, .JP2, .PSD, .EMF, .PS, .EPS, .WEBP, .HEIF, .DDS and .WDP.

JP2 is used for the JPEG 2000 format. EMF is a vector rather than raster format which can be useful when you require resolution independence and smaller files. PS is raw vector PostScript-compatible output. EPS is the Encapsulated Postscript format. The particular type of EPS produced by ABCpdf conforms to the DSC (Document Structuring Conventions) standard, which is a subset of EPS intended to make EPS files more usable. WebP is a high compression image format designed by google. HEIF is High Efficiency Image File Format based around MPEG. DDS is DirectDraw Surface designed for decompression by GPUs. WDP is JPEG extended range - a Microsoft technology often used in XPS documents.

Our BMP export module supports alpha (SaveAlpha), embedded color profiles (IccOutput), indexed color in various bit depths (ColorSpace & Palette) in both compressed and non-compressed formats (SaveCompression).

In addition you can render to any of the file types specified as part of the GetText method - .TXT, .SVG, .SVG+ and .SVG+2.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

