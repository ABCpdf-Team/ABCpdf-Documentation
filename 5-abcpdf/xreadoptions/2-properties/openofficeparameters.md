# OpenOfficeParameters Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ListDictionary` | false | No | OpenOffice.org PDF conversion control parameters. |

## Notes

This property is used by the OpenOffice.org import module. It is used to pass custom parameters to OpenOffice.org for precise control over the PDF conversion process.

The parameters are a set of named objects. The names and object types vary between versions of OpenOffice.org but ABCpdf defaults to a base set that is appropriate for most conversions.

| Name | Description | Type | Value |
| :---: | --- | --- | --- |
| UseLosslessCompression | Lossless compression of images. All pixels are preserved. | Boolean | false |
| Quality | Quality level for JPEG compression. | Int32 | 90 |
| ReduceImageResolution | Resample or downsize the images to a lower number of pixels per inch. | Boolean | false |
| MaxImageResolution | Target resolution for the images. | Int32 | 72 |
| UseTaggedPDF | Preserve semantic structures such as table of contents, hyperlinks, and controls. | Boolean | true |
| ExportNotes | Export notes of Writer and Calc documents as PDF notes. | Boolean | true |
| ExportNotesPages | Export pages notes. | Boolean | false |
| UseTransitionEffects | Export Impress slide transition effect to respective PDF effects. | Boolean | false |
| FormsType | Select the format of submitting forms from within the PDF file.<br>For example... 0 - FDF, 1 - PDF, 2 - HTML, 3 - XML | Int32 | 0 |

More details and other options can be found on the [OpenOffice.org web site](http://wiki.services.openoffice.org/wiki/API/Tutorials/PDF_export).
