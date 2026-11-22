# ReduceSizeOperation Class

Operation to reduce the size of a document.

Use after [Append](../../5-abcpdf/doc/1-methods/append.md) (merging) to remove duplicate fonts and images and shrink the file.

The default settings here are aimed a reasonably aggressive size reduction. The most common changes you may wish to make relate to monochrome (eg black and white) images and palettization. The default settings here may be too aggressive for some applications so may require a little moderation. See the [MonochromeImageDpi](2-properties/monochromeimagedpi.md) property for details.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Operations.Operation`](../1-operation/index.md)  
`       WebSupergoo.ABCpdf14.Operations.ReduceSizeOperation`

## Methods

| Method | Description |
| --- | --- |
| ⚠ [ReduceSizeOperation](1-methods/1-reducesizeoperation.md) | ReduceSizeOperation Constructor. |
| ⚠ [Compact](1-methods/compact.md) | Compact and compress the document. |

## Properties

| Property | Description |
| --- | --- |
| [CompressImages](2-properties/compressimages.md) | Whether to resize and recompress images where possible. |
| [CompressStreams](2-properties/compressstreams.md) | Whether to compress uncompressed streams where possible. |
| [ColorImageCompression](2-properties/colorimagecompression.md) | The target compression type for the re-encoding of color images. |
| [ColorImageDpi](2-properties/colorimagedpi.md) | The target resolution for the resampling of color images. |
| [ColorImageQuality](2-properties/colorimagequality.md) | The target compression quality for the re-encoding of color images. |
| [GrayImageCompression](2-properties/grayimagecompression.md) | The target compression type for the re-encoding of grayscale images. |
| [GrayImageDpi](2-properties/grayimagedpi.md) | The target resolution for the resampling of grayscale images. |
| [GrayImageQuality](2-properties/grayimagequality.md) | The target compression quality for the re-encoding of grayscale images. |
| [MonochromeImageCompression](2-properties/monochromeimagecompression.md) | The target compression type for the re-encoding of monochrome images. |
| [MonochromeImageDpi](2-properties/monochromeimagedpi.md) | The target resolution for the resampling of monochrome images. |
| [MonochromeImageQuality](2-properties/monochromeimagequality.md) | The target compression quality for the re-encoding of monochrome images. |
| [PageContents](2-properties/pagecontents.md) | The pages to be operated upon. |
| [PalettizationTolerance](2-properties/palettizationtolerance.md) | The amount of divergence from the target palette which will be allowed. |
| [RecompressStreams](2-properties/recompressstreams.md) | Whether to recompress streams that are already losslessly compressed. |
| [RefactorImages](2-properties/refactorimages.md) | Whether to refactor and remove duplicate images where possible. |
| [RemoveUnusedFonts](2-properties/removeunusedfonts.md) | Whether to refactor and remove unused fonts where possible. |
| [RemoveUnusedImages](2-properties/removeunusedimages.md) | Whether to refactor and remove unused images where possible. |
| [UnembedComplexFonts](2-properties/unembedcomplexfonts.md) | Whether to unembed complex Unicode based fonts where possible. |
| [UnembedCorruptFonts](2-properties/unembedcorruptfonts.md) | Whether to unembed embedded fonts that appear to be corrupt or non-standard. |
| [UnembedSimpleFonts](2-properties/unembedsimplefonts.md) | Whether to unembed simple Latin based fonts where possible. |
| [UnembedUnusualFonts](2-properties/unembedunusualfonts.md) | Whether to unembed embedded fonts that do not have an obvious substitute on the local machine. |
| [Warnings](2-properties/warnings.md) | Warnings related to errors or inconsistencies found while reducing size. |
