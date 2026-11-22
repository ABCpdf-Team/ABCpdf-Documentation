# Validation Class

Validation class.

This is the base pure abstract class that stores and reports the validation status of Elements that are being validated.

For custom validation reports you may derive from this class and implement any abstract methods.

However generally you will want to derive from ValidationBase as it includes a number of useful housekeeping routines.

`System.Object`  
`    WebSupergoo.ABCpdf14.Elements.Validation`  
`       `[`WebSupergoo.ABCpdf14.Elements.ValidationBase`](../0009-validationbase/index.md)

## Methods

| Method | Description |
| --- | --- |
| [Validation](1-methods/01-validation.md) | Initializes a new instance of the Validation class. |
| [Start](1-methods/02-start.md) | Called at the point each Element starts validation. |
| [Finish](1-methods/03-finish.md) | Called at the point each Element finishes validation. |
| [Seen](1-methods/04-seen.md) | Called to indicate that a particular RefAtom has been seen. |
| [ReportEntryVersion](1-methods/05-reportentryversion.md) | Called to report the entry version. |
| [ReportUnknownEntryName](1-methods/06-reportunknownentryname.md) | Called to report an entry with an unrecognized name. |
| [ReportIncorrectEntryValue](1-methods/07-reportincorrectentryvalue.md) | Called to report an entry with an incorrect value. |
| [ReportMissingRequiredEntry](1-methods/08-reportmissingrequiredentry.md) | Called to report a missing required entry. |
| [ReportNotIndirectObject](1-methods/09-reportnotindirectobject.md) | Called to report an object which should be indirect but is not. |
| [ReportIncorrectItemType](1-methods/10-reportincorrectitemtype.md) | Called to report an object which is of the wrong type. |
| [ReportIncorrectNumberOfEntries](1-methods/11-reportincorrectnumberofentries.md) | Called to report an array with an incorrect number of entries. |
| [ReportException](1-methods/12-reportexception.md) | Called to report an Exception that was thrown during validation. |
| [ReportRecursiveStructure](1-methods/13-reportrecursivestructure.md) | Called to report detection of a recursive structure. |

## Properties

| Property | Description |
| :---: | --- |
