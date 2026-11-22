# LinkAnnotation Function

Add link annotation to the current page of the doc.

## Syntax

*C#*

[`LinkAnnotation`](../index.md)`(Doc doc, XRect rect)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| rect | Annotation rectangle |

## Notes

Add link annotation to the current page of the doc.

You can set the destination of the link by assigning a value to the LinkElement.EntryDest property.

The EntryDest property is a general DestinationElement type which allows you to specify various types of destinations including pages, URIs /URLs and JavaScript mediated destinations.
