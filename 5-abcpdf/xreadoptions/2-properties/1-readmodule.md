# ReadModule Property

## Notes

The ReadModuleType enumeration may take the following values:

The Default module allows ABCpdf to delegate the read operation to what it considers to be an appropriate module or set of modules, depending on the content provided and the method called. In general it will identify the image and see if there is a specialist module available. If not then it will use the BasicImage module.

The Pdf module is the standard PDF import module. It takes advantage of the Password property.

The SwfVector module is our own Flash / SWF vector import module. It takes advantage of the Operation and Frame properties. The Operation must be either null or a SwfImportOperation.

The Xps module is a native XPS and OXPS (Open XPS) import module. It takes advantage of the Operation property, which must be either null or an XpsImportOperation.

The XpsAny module prints via the XPS printer driver and then imports the resultant document. It takes advantage of the Operation, FileExtension, and Timeout properties. The Operation provided must be either null or an XpsImportOperation.

The MSOffice module uses Microsoft Office for document conversion. This module is fast and produces high fidelity output, including native form fields and annotations conversion. It takes advantage of the AddForms, Bookmarks, Password, EnableMSOfficeMacros, PreserveTransparency and Timeout properties.

The OpenOffice module uses OpenOffice.org for document conversion. It takes advantage of the OpenOfficeParameters and Timeout properties.

Office and XpsAny. What security options should you consider?

The MSOffice, OpenOffice.org and XpsAny modules make use of helper applications installed on your local machine. As such you need to consider any security implications fairly carefully.

Running ABCpdf in a reduced permission environment will provide a useful base level of security which will be inherited by your helper applications. However one layer of defense is not enough and you should consider the security of your helper applications as well.

MS Office and OpenOffice.org are mature and well supported software suites so in general they are secure. However they are also common attack vectors so you should ensure that your input documents are either trusted or are vetted prior to processing. Microsoft Defender Antivirus is easily scripted so that provides a minimum viable base when it comes to vetting.

XpsAny requires more thought as it uses the print shell verb to print a document via the XPS print driver. You need to consider what print verbs are on your system and the file extensions to which they are bound. Ensure that you only present file types which will use known applications and consider how secure these applications might be. Again you should only provide documents which are trusted or which have been vetted prior to processing.

The WordGlue module uses WordGlue .NET for DOC and DOCX conversion. WordGlue .NET is a fully managed and fully secure component for the conversion of semantic document formats. This requires WordGlue 2.0.0.1 or later to be installed. WordGlue can be downloaded from our web site.

The RichTextFormat module is a native RTF import module. It takes advantage of the DefaultRect and Timeout properties.

The Svg module is a native SVG (Scaleable Vector Graphics) import module. It takes advantage of the DefaultFont and DefaultRect properties.

The Eps module is a native EPS (Encapsulated PostScript) import module. It takes advantage of the ErrorHandling and Log properties.

The Tiff module is a native TIFF (Tagged Image File Format) import module. It takes advantage of the PreserveTransparency and Frame properties. TIFF images may be black and white, grayscale, RGB, CMYK, TIFF or Lab in 1, 8 , 16 and 32 bits per component color depth and with out without alpha. Because PDF does not support 32 bit High Dynamic Range (HDR) encodings, TIFFs in this format will be downsampled to 16 bits per component. TIFF images containing JPEG or CCITT compressed frames will be inserted direct into the document without a decompress-recompress cycle. This module is broadly similar in speed to System.Drawing for most images. For CMYK images and images with large embedded color profiles it is a bit slower simply because there is more data to compress. In out tests with large images in the order of about 500 MB it was about ten times faster. In our tests with TIFF images containing JPEG or CCITT frames it is typically about thirty times faster. TIFF orientation flags are automatically applied so that images that are tagged in this way automatically appear the right way up.

The Photoshop module supports the standard PSD and also the large image PDB file types. If the PreserveTransparency property is set any transparency will be preserved. It allows the direct import of bitmap, RGB, Grayscale, CMYK, Lab, Indexed, Duotone and Multichanel images in 1, 8 , 16 and 32 bits per component color depth, all with or without alpha. The PDF format does not support 32 bits per component HDR images so these are scaled down to 16 bits per component. The Frame property allows the extraction of individual layers from within the image.

The Jpeg2000 module supports the JPEG 2000 JP2 and JPX formats. It allows the direct import of RGB, Grayscale and CMYK images at 1, 8 , 16 and 32 bits per component color depth.

The EmfVector module allows direct vector import of Enhanced Metafile (EMF) and Windows Metafile (WMF) into a PDF document. However you should note that not all EMF or WMF files can be directly imported this way. If this is the case you should look at using AddImageObject with the default ReadModule, which is fast but will result in the image being rasterized. As another alternative, the XpsAny ReadModule will not be as fast but will preserve the vector nature of practically all such files.

The WebP module allows import of the WebP file format. WebP is a google format that provides lossy and lossless compression for images on the web. It claims size reductions of perhaps 25% over PNG and JPEG and highly optimized alpha channel support.

The Png module is a native import module designed to run cross platform. It supports all PNG bit depths (1, 8, 16) and color spaces (grayscale and RGB) in the PNG specification and allows import preserving those native depths and color spaces.

The Gif, Jpeg and Bmp modules are native import module designed to run cross platform. They support all bit depths and color spaces in the respective color spaces and allow import preserving those native depths and color spaces.

The FlashNative module is a legacy parser that depends on Adobe components. For importing Flash or SWF files, ABCpdf now defaults to using the custom SwfVector ReadModule. To revert to the older native Flash module, select FlashNative as the ReadModule.

The BasicImage module is based around the native import abilities provided by Windows. It allows you to read common formats such as JPEG (grayscale, RGB or CMYK) and multi-page TIFF. It uses supports, at minimum, JPEG,TIFF, BMP, PNG, GIF, WMP (Windows Media Photo) and ICO. It also allows the import of EMF and WMF though these will be rasterized on import. In general, color spaces and bit depth will be preserved, though not always and in particular not in the case of TIFF. The specialist cross platform modules detailed above are superior for formats like JPEG, TIFF, BMP and GIF.

Beyond the standard image formats listed above, the BasicImage module typically supports the following:

The BasicImage module takes advantage of the PreserveTransparency property.

## Example

None.

