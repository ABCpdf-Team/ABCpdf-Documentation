# ValidationBase Class

ValidationBase class.

This is a class derived from Validation that stores and reports the validation status of Elements that are being validated.

It implements a variety of useful features like the detection and resolution of recursive loops, a stack trace and a coverage option.

For custom validation reports you will generally want to derive from this class and implement any abstract methods.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Validation`](../0007-validation/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ValidationBase`

## Methods

| Method | Description |
| --- | --- |
| [ValidationBase](1-methods/01-validationbase.md) | Initializes a new instance of the ValidationBase class. |
| [GetStackTrace](1-methods/02-getstacktrace.md) | Gets the stack trace. |
|  | [inherited methods...](../0007-validation/index.md) |

## Properties

| Property | Description |
| --- | --- |
| Ⓢ [AllTypes](2-properties/01-hashset_string_alltypes.md) | Gets all types that may be recorded in the Coverage. |
| [Coverage](2-properties/02-coverage.md) | Gets or sets the coverage. |
| [Stack](2-properties/03-stack.md) | Gets or sets the stack. |
| [Done](2-properties/04-done.md) | Gets the set of IDs which have been processed. |
|  | [inherited properties...](../0007-validation/index.md) |
