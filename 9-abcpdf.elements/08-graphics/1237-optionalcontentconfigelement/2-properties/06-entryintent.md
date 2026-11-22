# EntryIntent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Intent" entry of the optional content configuration dictionary object. |

## Notes

Represents the "Intent" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

The PDF specification states that items in this array assume a value of "View" if no value has been provided.

Items in this array may take one of the following valid values:.

- View
- Design
- All

.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 229.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=237)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 282.](https://www.iso.org/standard/63534.html)

The Intent entry restricts which optional content groups this configuration applies to. Only groups whose intent matches are subject to this configuration's state settings. Groups with non-matching intents retain their current state.
