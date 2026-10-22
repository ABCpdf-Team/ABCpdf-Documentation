# SaveAppend Property

## Notes

This property determines whether the Save method appends to (rather than overwrites) existing image files.

If this property is set to true and a file already exists then the Save method appends the rendered image to the existing file rather than just overwriting it. In this way you can build up multi-page images.

For in-memory operations you can use this property set to true in conjunction with a MemoryStream and the Save overload that supports streams.

This property is used for TIFF output only.

## Example

See the SaveCompression property.

Also see example code in: XRendering SaveCompression Property.

