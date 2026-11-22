# CompressObjects Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to use object stream compression to reduce file size. |

## Notes

This property determines if object stream compression should be used.

Object stream compression allows groups of simple atoms (the lowest-level PDF objects) to be stored in a separate stream (an ObjStm) and compressed to reduce output file size.

This is particularly useful for Tagged PDF - often required for accessibility. The structures required for tagging can result in a multitude of similar atoms and using object stream compression can make a significant difference to the size of output. It is perhaps notable that tagged PDF was introduced in PDF 1.4 and then object streams were introduced immediately afterwards in PDF 1.5. File size reduction will vary considerably depending on content but 10% might be typical.

Very small PDF documents also benefit significantly. In documents measuring ten or twenty kilobytes, atoms can make up a significant proportion of the document size. In these situations you might be able to reduce the size by perhaps 30% simply by enabling this option.

In addition to reducing the size of the document, setting this property allows you to save PDF files greater than 10GB in size.

So why might you not want to use it?

If you are not using tagging, the overhead associated with uncompressed atoms can be quite small. Not all PDF readers support object streams and in particular, older versions of Acrobat (eg 8) are not happy reading documents which incorporate both object streams and linearized content. Similarly, the compression methods are quite complex and less well constructed PDF parsers may not understand them. So if you are relying on old or lower quality software you may wish to disable this option.

Object stream compression is incompatible with [Incremental](incremental.md) update. If this flag is set then object stream compression will not be used. PDF/A-1 is not compatible with object stream compression so if you use a [PdfConformityOperation](../../../8-abcpdf.operations/7-pdfconformityoperation/index.md) to make your document PDF/A-1 compatible then again, object stream compression will not be used.

Object stream compression is a feature that was introduced with PDF version 1.5. Since PDF/A-1, PDF/X-1 and PDF/X-3 are based on PDF versions prior to 1.5 they cannot support compressed object streams and remain compliant. However later versions of PDF/A and PDF/X do support object stream compression.
