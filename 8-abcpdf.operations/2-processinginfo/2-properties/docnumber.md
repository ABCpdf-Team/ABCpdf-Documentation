# DocNumber Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | n/a | No | Gets or sets the document number of the source document being/to be processed. |

## Notes

The value of this property when the [Operation.ProcessingObject](../../1-operation/3-events/1-processingobject.md) event is generated depends on the operation.

The event handler should change this value when a processing sequence other than the default is desired. Set this value to null to end the processing of the current set of documents.

## Example

See the [XpsImportOperation.Import](../../4-xpsimportoperation/1-methods/import.md) method.
