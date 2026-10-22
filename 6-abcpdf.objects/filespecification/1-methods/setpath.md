# SetPath Function

Set the path to the file for the specified platform

## Syntax

[C#]

```csharp
string SetPath(string platform, string path)
```

## Params

| **Name** | **Description** |
| --- | --- |
| platform | The platform name. |
| path | The file path. |

## Notes

This method is provided for low level control over obsolete entries contained in old PDF documents.

So in general you should be using the [Rationalize](rationalize.md) method and the [Uri](2-properties/uri.md) property rather than this method.

A FileSpecification may hold multiple paths to a file.

Each path is specific to a platform such as Mac, Windows or Unix. For further details see the [Platform](2-properties/platform.md) property.

This function allows you to set the path for the specified platform.

Setting to null will remove the path.

## Example

None
