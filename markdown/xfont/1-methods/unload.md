# Unload&nbsp;Function

Unloads a font so that it is no longer available.

## Notes

Unloads a font so that it is no longer available.

It is important that you ensure that the fonts is not being used by ABCpdf at the point that it is unloaded. This means you need to consider if other threads might be constructing PDF documents that are making use of the font. Unloading a font which is in use may result in unpredictable behavior or output.

