# CloudVisionOperation Class

Google Cloud Vision API utilities.

These can be used for:.

- Optical Character Recognition (OCR) on raster or vector documents.
- Automatically tagging embedded images with meaningful descriptions.

This class requires .NET 5 or later.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.CloudVisionOperation
```

## Methods

| Method | Description |
| --- | --- |
| [CloudVisionOperation](1-methods/01-cloudvisionoperation.md) | Create a CloudVisionOperation. |
| [AddPages](1-methods/02-addpages.md) | Add all the pages of the document for processing. |
| [AddPage](1-methods/03-addpage.md) | Add one page of the document for processing. |
| [StartOcr](1-methods/04-startocr.md) | Start OCR operation on the pages that have been added. |
| [TagImages](1-methods/05-tagimages.md) | Start image tagging operation on the pages that have been added. |
| [WaitAll](1-methods/06-waitall.md) | Wait until the operation is completed. |

## Properties

| Property | Description |
| --- | --- |
| Ⓢ [Client](2-properties/01-client.md) | The HttpClient instance to use for making web requests. |
| [AddWords](2-properties/02-addwords.md) | Whether to OCR and add the text of detected words to the processed pages. |
| [WordColor](2-properties/03-wordcolor.md) | Whether to make detected words visible using a particular color. |
| [ParaColor](2-properties/04-paracolor.md) | Whether to outline paragraphs using a particular color. |
| [BlockColor](2-properties/05-blockcolor.md) | Whether to outline blocks using a particular color. |
| [ConfidenceColor](2-properties/06-confidencecolor.md) | The confidence color indicating the reliability of the OCR for each piece of text. |
| [Flatten](2-properties/07-flatten.md) | Whether to flatten the page after text is added. |
| [ApiKey](2-properties/08-apikey.md) | The Google API key to use for requests. |
| [RetryCount](2-properties/09-retrycount.md) | The number of times to retry if the service is not available. |
| [Dpi](2-properties/10-dpi.md) | The DPI of the page. |
| [AngleRounding](2-properties/11-anglerounding.md) | In the case that text is drawn at an angle, this property allows a snap-to-fit effect. |
| [MinimumSize](2-properties/12-minimumsize.md) | The minimum size of image which should be passed to OCR. |
| [MaximumSize](2-properties/13-maximumsize.md) | The maximum size of image which should be passed to OCR. |
| [CloudVisionTask](2-properties/14-cloudvisiontask.md) | The task associated with the current request. |
| [ProgressNow](2-properties/15-progressnow.md) | The number of operation tasks which have been completed. |
| [ProgressMax](2-properties/16-progressmax.md) | The total number of operation tasks to be completed. |
