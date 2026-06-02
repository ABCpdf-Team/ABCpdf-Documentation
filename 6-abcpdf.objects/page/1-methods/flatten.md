# Flatten  Function

Flatten and compress the page content stream.

## Syntax

[C#]

```csharp
bool Flatten()bool Flatten(bool force)bool Flatten(bool force, bool compress, int compressionLevel)
```

## Params

| **Name** | **Description** |
| --- | --- |
| force | Whether to force the flattening even if the streams contain extra information which might be lost - default false. |
| compress | Whether to compress the resulting stream or whether to leave it as undetermined compression - default true. This value is only relevant if force is true. |
| compressionLevel | The level of compression to apply as a percentage. Smaller numbers are faster but produce lower compresssion ratios. Pass -1 for a default choice. |
| return | Whether the page is flat. |

## Notes

Objects added to a page are stored as individual layers. Calling this method combines all the layers on the current page and then re-compresses the layer data.

This method is the same as the [Doc.Flatten](5-abcpdf/doc/1-methods/flatten.md) method. However the 'force' parameter can be used to force the page to be flattened even when the Doc.Flatten method would be more cautious.

The compression level parameter controls the intensity of Flate compression applied to the current page content stream. Lower values execute faster but yield lower compression ratios, while higher values produce smaller output at the cost of speed. Passing -1 instructs the method to use a default compression level determined by the library.

The Doc.Flatten method is cautious because different layers can be tagged with different information. Flattening the page will result in this type of information being lost. This type of tagging is not something that is defined in the PDF specification but it is possible that various third party applications may make use of proprietary techniques like this to add extra information to the document.

However for some types of operations a failure to flatten the page can be very inconvenient. For example it is possible to split PDF drawing operations over more than one content stream. If you are analyzing and updating a page using the [Doc.GetText](5-abcpdf/doc/1-methods/gettext.md) method to identify the locations of PDF operators, it can be very tiresome to deal with this type of construct.
