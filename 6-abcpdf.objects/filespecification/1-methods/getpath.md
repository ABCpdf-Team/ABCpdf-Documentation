# GetPath Function

Get the path to the file for the specified platform

## Syntax

```csharp
string GetPath(string platform)
```

## Params

| Name | Description |
| :---: | --- |
| platform | The platform name. |
| return | The file path. |

## Notes

This method is provided for low level control over obsolete entries contained in old PDF documents.

So in general you should be using the [Rationalize](rationalize.md) method and the [Uri](../2-properties/uri.md) property rather than this method.

A FileSpecification may hold multiple paths to a file.

Each path is specific to a platform such as Mac, Windows or Unix. For further details see the [Platform](../2-properties/platform.md) property.

This function allows you to retrieve the path for the specified platform.

If there is no matching path then null will be returned.
