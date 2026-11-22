# FontUnembedment Example Project

## Project

The project detailed here shows how to un-embed and re-embed fonts.

There is a certain amount of overlap between this project and existing classes within ABCpdf. For example the [ReduceSizeOperation](../../8-abcpdf.operations/b-reducesizeoperation/index.md) class provides a simple way to un-embed fonts, while the [FontObject](../../6-abcpdf.objects/fontobject/index.md) class provides methods for embedding, un-embedding and subsetting fonts.

However the FontUnembedment project provides more careful control over the process and may be preferable where this is required.

The FontUnembedder class takes a list of fonts and, for each one, whether it should be referenced or embedded and subsetted. It then replaces the original fonts throughout the document, which can make files considerably smaller.

It supports Chinese and other East Asian fonts as well as Latin ones. However you should always check the output, and note that it does not process annotation appearances.
