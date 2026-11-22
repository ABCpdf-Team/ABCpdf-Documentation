# XRendering Class

Provides control over PDF rendering and rendering options.

Note: rendering is only available under the ABCpdf Professional License.

Rendering is initiated by using the [Save](1-methods/save.md) method. Properties of this object allow finer control over the way that rendering is performed.

```
System.Object
    WebSupergoo.ABCpdf14.XRendering
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [GetBitmap](1-methods/getbitmap.md) | Renders the current area of the current page to a Bitmap. |
| [GetData](1-methods/getdata.md) | Renders the current area of the current page to memory. |
| [Save](1-methods/save.md) | Renders and saves the current area of the current page. |

## Properties

| Property | Description |
| --- | --- |
| [AllowIntentChanges](2-properties/allowintentchanges.md) | Whether content in the PDF is allowed to override the rendering intent. |
| [AntiAliasImages](2-properties/antialiasimages.md) | Whether to anti-alias images. |
| [AntiAliasPolygons](2-properties/antialiaspolygons.md) | Whether to anti-alias polygons. |
| [AntiAliasScene](2-properties/antialiasscene.md) | Whether to apply entire scene anti-aliasing. |
| [AntiAliasText](2-properties/antialiastext.md) | Whether to anti-alias text. |
| [AutoRotate](2-properties/autorotate.md) | Whether pages should be automatically rotated. |
| [Backdrop](2-properties/backdrop.md) | The background color against which content is rendered. |
| [BigImage](2-properties/bigimage.md) | Whether to use large image output or not. |
| [BitsPerChannel](2-properties/bitsperchannel.md) | The output bits per color channel. |
| [ColorSpace](2-properties/colorspace.md) | The name of the output color space. |
| [Compatibility](2-properties/compatibility.md) | The rendering behavior that should be simulated. |
| [DefaultHalftone](2-properties/defaulthalftone.md) | Halftone type and options. |
| [DotsPerInch](2-properties/dotsperinch.md) | The output resolution in dots per inch (DPI). |
| [DotsPerInchX](2-properties/dotsperinchx.md) | The horizontal output resolution in dots per inch (DPI). |
| [DotsPerInchY](2-properties/dotsperinchy.md) | The vertical output resolution in dots per inch (DPI). |
| [DrawAnnotations](2-properties/drawannotations.md) | Whether to render fields and annotations. |
| [ExtraThreads](2-properties/extrathreads.md) | The number of extra threads the renderer is allowed to create. |
| [FlateCompression](2-properties/flatecompression.md) | The level of compression to apply when using Flate compression. |
| [FontSubstitutions](2-properties/fontsubstitutions.md) | Font substitutions to make when rendering. |
| [IccCmyk](2-properties/icccmyk.md) | The path to the default CMYK ICC color profile. |
| [IccGray](2-properties/iccgray.md) | The path to the default Gray ICC color profile. |
| [IccOutput](2-properties/iccoutput.md) | The path to the default output ICC color profile. |
| [IccRgb](2-properties/iccrgb.md) | The path to the default RGB ICC color profile. |
| [Log](2-properties/log.md) | The log for the last render. |
| [Metadata](2-properties/metadata.md) | A collection of TIFF tags that should be written to the output file. |
| [MinimumLineWidth](2-properties/minimumlinewidth.md) | The minimum stroked line width for output. |
| [NamedSeparation](2-properties/namedseparation.md) | Named separations. |
| [NumTiffStrips](2-properties/numtiffstrips.md) | Number of strips to generate when writing a tiff file. |
| [OpsToIgnore](2-properties/opstoignore.md) | A set of operators to ignore. |
| [Overprint](2-properties/overprint.md) | Whether to apply overprint. |
| [Palette](2-properties/palette.md) | A color palette to be used. |
| [PngFilters](2-properties/pngfilters.md) | The types of PNG filters to use. |
| [PreserveK](2-properties/preservek.md) | Switch for preserving black options when converting color values to cmyk. |
| [PreserveKOptions](2-properties/preservekoptions.md) | Tell the color management system how to preserve black when converting color values to cmyk. |
| [Progressive](2-properties/progressive.md) | Whether JPEG output should use progressive compression. |
| [RenderingIntent](2-properties/renderingintent.md) | Gets or sets the default rendering intent. |
| [ResizeImages](2-properties/resizeimages.md) | Whether to resize images for vector output. |
| [SaveAlpha](2-properties/savealpha.md) | Whether to save the alpha channel into the output. |
| [SaveAppend](2-properties/saveappend.md) | Whether to append to (rather than overwrite) existing image files. |
| [SaveCompression](2-properties/savecompression.md) | The preferred compression method. |
| [SaveQuality](2-properties/savequality.md) | The output file quality for lossy compression. |
| [UseEmbeddedHalftone](2-properties/useembeddedhalftone.md) | Whether to use embedded halftones. |
| [UseFontHints](2-properties/usefonthints.md) | Whether to use font hinting instructions. |
