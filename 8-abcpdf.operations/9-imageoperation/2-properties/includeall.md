# IncludeAll Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to include all images in the analysis to allow the detection of orphans. |

## Notes

Whether to include all images in the analysis to allow the detection of orphans.

By default the ImageOperation will go through the pages defined in the [PageContents](pagecontents.md) looking at all the images that are used. However it is possible to include an image in a document yet never use it. This kind of orphan will not be detected using this method.

To allow the detection of orphans this property can be used to search the entire document and reference any image that exists. Images that are not referenced on the page will appear in the analysis as an [ImageProperties](../../9-imageproperties/index.md) item with no [ImageRenditions](../../9-imagerendition/index.md).

However be aware that referenced images may use an unreferenced image as a mask or soft mask so just because an image is not referenced does not necessarily mean it is unused. To detect orphans you need to build a list of unreferenced images and then remove from that any images which appear as the [PixMap.Mask](../../../6-abcpdf.objects/pixmap/2-properties/mask.md) or [PixMap.SMask](../../../6-abcpdf.objects/pixmap/2-properties/smask.md) of a referenced image.
