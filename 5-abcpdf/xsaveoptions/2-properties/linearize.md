# Linearize Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to linearize the output for fast web viewing. |

## Notes

This property determines if output should be linearized for fast viewing over the web.

Linearized PDFs are organized in a special way to enable efficient access over the web. The output is valid PDF in all ways but it is structured to allow web viewers to access only the portions of the PDF that they need.

From a practical point of view this means that a Linearized PDF opens instantly rather than requiring that the entire PDF is downloaded before it can be seen.

Adobe sometimes refer to Linearization as Fast Web View.

There is a performance and memory overhead associated with linearization. However this is something that you should normally only notice when handling huge documents.

## Example

Also see example code in: [FileSpecification FileSpecification Function](../../../6-abcpdf.objects/filespecification/1-methods/filespecification.md).
