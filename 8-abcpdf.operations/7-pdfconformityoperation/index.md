# PdfConformityOperation Class

Operation to produce conforming PDF files - for example to convert an existing PDF to PDF/A (ISO 19005) for archiving.

Note that this feature is only available under the ABCpdf Professional License.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.PdfConformityOperation

Implements: IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [GetData](1-methods/getdata.md) | Get the conforming document as raw data. |
| ⚠ [GetStream](1-methods/getstream.md) | Get the conforming document as raw data stream. |
| ⚠ [Save](1-methods/save.md) | Write the conforming PDF document. |

## Properties

| Property | Description |
| --- | --- |
| [Conformance](2-properties/conformance.md) | The PDF conformance to be applied. |
| [Conformity](2-properties/conformity.md) | The PDF conformity options. |
| [ExcludedConformity](2-properties/excludedconformity.md) | The PDF conformity options to exclude. |
| [Options](2-properties/options.md) | The PDF update options. |
| [Messages](2-properties/messages.md) | The changes made to make the document conformant. |
| [Errors](2-properties/errors.md) | The features within the document which could not be made conformant. |
