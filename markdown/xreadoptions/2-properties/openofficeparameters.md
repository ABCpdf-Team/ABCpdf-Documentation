# OpenOfficeParameters 
Property

&nbsp;

## Notes

This property is used by the OpenOffice.org import module. It is used to pass custom parameters to OpenOffice.org for precise control over the PDF conversion process.

The parameters are a set of named objects. The names and object types vary between versions of OpenOffice.org but ABCpdf defaults to a base set that is appropriate for most conversions.   NameDescriptionTypeValue UseLosslessCompressionLossless compression of images. All pixels are preserved.Booleanfalse QualityQuality level for JPEG compression.Int3290 ReduceImageResolutionResample or downsize the images to a lower number of pixels per inch.Booleanfalse MaxImageResolutionTarget resolution for the images.Int3272 UseTaggedPDFPreserve semantic structures such as table of contents, hyperlinks, and controls.Booleantrue ExportNotesExport notes of Writer and Calc documents as PDF notes.Booleantrue ExportNotesPagesExport pages notes.Booleanfalse UseTransitionEffectsExport Impress slide transition effect to respective PDF effects.Booleanfalse FormsTypeSelect the format of submitting forms from within the PDF file. For example... 0 - FDF, 1 - PDF, 2 - HTML, 3 - XMLInt320

More details and other options can be found on the OpenOffice.org web site.

