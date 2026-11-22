# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "S" entry of the action dictionary object. |

## Notes

Represents the "S" entry of the action dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- GoTo
- GoToR
- GoToE
- Launch
- Thread
- URI
- Sound
- Movie
- Hide
- Named
- SubmitForm
- ResetForm
- ImportData
- JavaScript
- SetOCGState
- Rendition
- Trans
- GoTo3DView
- RichMediaExecute
- GoToDp

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 193, page 414.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=422)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 196, page 502.](https://www.iso.org/standard/63534.html)

The action type name determines which additional entries are valid and how the viewer processes the action. Common values include GoTo, GoToR, GoToE, Launch, Thread, URI, Sound, Movie, Hide, Named, SubmitForm, ResetForm, ImportData, SetOCGState, Rendition, Trans, GoTo3DView, and JavaScript.
