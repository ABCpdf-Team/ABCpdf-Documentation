# ImageXObjectElement Class

This class represents the image dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 206.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=214)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 255.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

An image XObject is a sampled raster image stored as a PDF stream. Each sample in the stream represents one pixel, and the Width and Height entries define the image's dimensions in samples.

The ColorSpace entry names the color space for the image's samples. The number of color components per sample must match the color space. For image masks, the color space is omitted because the image has only one component used as a mask.

BitsPerComponent sets the number of bits used to encode each color component. Valid values are 1, 2, 4, 8, and 16. This value, combined with the number of components and the image dimensions, determines the total size of the unencoded sample data.

The ImageMask flag, when true, treats the image as a stencil mask rather than a color image. A mask image has one component per sample; painted pixels take the current color and the mask controls which pixels are affected.

The Mask entry clips painting to a specified color range or to the shape defined by another image mask stream. When a color range mask is used, pixels whose sample values fall within the range are left unpainted.

SMask supplies a soft mask image that controls the alpha channel of the image during compositing. The soft mask must be a grayscale image with the same dimensions as the parent image.

SMaskInData is an integer that indicates whether soft-mask data is interleaved with the image samples in the stream. A value of 0 means no interleaved mask; 1 and 2 specify different interleaving conventions.

The Decode array remaps the encoded sample values to the component ranges expected by the color space. Each pair of values in the array maps the minimum and maximum encoded values to the minimum and maximum decoded values for one component.

The Interpolate flag advises the renderer to smooth pixel boundaries when scaling the image up. The default is false; enabling it may improve appearance but increases rendering cost.

The Alternates entry lists substitute image XObjects that a renderer may use in place of the main image, for example a lower-resolution version for screen display or a higher-resolution version for printing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.XObjectElement`](../1209-xobjectelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ImageXObjectElement`

## Methods

| Method | Description |
| --- | --- |
| [ImageXObjectElement](1-methods/01-imagexobjectelement.md) | Create a new ImageXObjectElement. |
|  | [inherited methods...](../1209-xobjectelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the image dictionary object. |
| [EntryWidth](2-properties/02-entrywidth.md) | Represents the "Width" entry of the image dictionary object. |
| [EntryHeight](2-properties/03-entryheight.md) | Represents the "Height" entry of the image dictionary object. |
| [EntryColorSpace](2-properties/04-entrycolorspace.md) | Represents the "ColorSpace" entry of the image dictionary object. |
| [EntryBitsPerComponent](2-properties/05-entrybitspercomponent.md) | Represents the "BitsPerComponent" entry of the image dictionary object. |
| [EntryIntent](2-properties/06-entryintent.md) | Represents the "Intent" entry of the image dictionary object. |
| [EntryImageMask](2-properties/07-entryimagemask.md) | Represents the "ImageMask" entry of the image dictionary object. |
| [EntryMask](2-properties/08-entrymask.md) | Represents the "Mask" entry of the image dictionary object. |
| [EntryDecode](2-properties/09-entrydecode.md) | Represents the "Decode" entry of the image dictionary object. |
| [EntryInterpolate](2-properties/10-entryinterpolate.md) | Represents the "Interpolate" entry of the image dictionary object. |
| [EntryAlternates](2-properties/11-entryalternates.md) | Represents the "Alternates" entry of the image dictionary object. |
| [EntrySMask](2-properties/12-entrysmask.md) | Represents the "SMask" entry of the image dictionary object. |
| [EntrySMaskInData](2-properties/13-entrysmaskindata.md) | Represents the "SMaskInData" entry of the image dictionary object. |
| [EntryName](2-properties/14-entryname.md) | Represents the "Name" entry of the image dictionary object. |
| [EntryStructParent](2-properties/15-entrystructparent.md) | Represents the "StructParent" entry of the image dictionary object. |
| [EntryID](2-properties/16-entryid.md) | Represents the "ID" entry of the image dictionary object. |
| [EntryOPI](2-properties/17-entryopi.md) | Represents the "OPI" entry of the image dictionary object. |
| [EntryOC](2-properties/18-entryoc.md) | Represents the "OC" entry of the image dictionary object. |
| [EntryMeasure](2-properties/19-entrymeasure.md) | Represents the "Measure" entry of the image dictionary object. |
| [EntryPtData](2-properties/20-entryptdata.md) | Represents the "PtData" entry of the image dictionary object. |
| [EntryMatte](2-properties/21-entrymatte.md) | Represents the "Matte" entry of the image dictionary object. |
|  | [inherited properties...](../1209-xobjectelement/index.md) |
