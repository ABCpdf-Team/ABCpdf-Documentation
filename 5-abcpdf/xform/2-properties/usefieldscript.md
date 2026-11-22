# UseFieldScript Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether the viewer should run JavaScript field calculations. |

## Notes

This property determines if JavaScript field calculations are executed.

Some PDF forms contain field JavaScript. This may be used to format field values, to add field values together, to ensure field values are consistent or to perform other form or field calculations.

By default these calculations will be run to ensure that the field values update in the way a user would expect. However by setting this property to false you can disable this behavior.
