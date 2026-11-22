# StampFormXObjects Function

Removes all Form XObjects from the page by embedding them into the page content

## Syntax

```csharp
int StampFormXObjects(bool force)
int StampFormXObjects(bool force, int levels)
```

## Params

| Name | Description |
| :---: | --- |
| force | Whether to stamp FormXObjects that may cause a change in the page appearance. |
| levels | The maximum number of levels of nested FormXObjects that should be flattened. |
| return | The number of FormXObjects removed from the page. |

## Notes

Removes all [Form XObjects](../../formxobject/index.md) from the page by embedding them into the content.

Most Form XObjects can be embedded in the page with no difference in page appearance. However Form XObjects such as transparency groups contain structures which cannot be represented any other way. These structures are uncommon in most documents but they do occur.

In this situation you need to decide whether a change in page appearance is acceptable and that the objects should be forcibly embedded. The alternative is to skip these objects and embed only those that will not affect the page appearance.

The levels parameter allows you to determine the level of nesting which should be removed. The number refers to the maximum number of iterations that should be performed. At each iteration the Form XObjects referenced by the page are flattened into the page. However if those Form XObjects themselves reference other Form XObjects then those will then become page level Form XObjects. Hence there can be a number of rounds of flattening. By default the sequence is repeated until there are no Form XObjects left. However sometimes it can be useful to be more selective and this can be controlled using this parameter.

## Example

Also see example code in: [AccessibilityOperation AccessibilityOperation Constructor](../../../8-abcpdf.operations/c-accessibilityoperation/1-methods/1-accessibilityoperation.md).
