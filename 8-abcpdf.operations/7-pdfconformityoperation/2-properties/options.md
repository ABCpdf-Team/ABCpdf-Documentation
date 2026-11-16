# Options Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | None | No | The PDF update options. |

## Notes

Options related to the way that the PDF may be changed as part of the operation.

The PdfConformityOperationOptions type is a flags enumeration so different values can be combined together using bitwise operations.

The PdfConformityOperationOptions enumeration may take the following values:

* None - No option.
* KeepDocumentModDate - Do not update the document modification date if it exists.

## Example

None
