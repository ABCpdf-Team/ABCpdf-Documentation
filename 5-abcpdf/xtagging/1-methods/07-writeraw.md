# WriteRaw Function

Writes a raw tag to the content stream.

## Syntax

[C#]

```csharp
<a href="../default.htm">void</a> WriteRaw(string tag)
```

## Params

| **Name** | **Description** |
| --- | --- |
| tag | The raw tag to be inserted. |

## Notes

Adds a new raw tag.

Typically you would use this for inserting point based content using the MP and DP operators.

These operators are PDF content stream commands that mark a single point with a tag identifier. MP simply applies a tag, while DP additionally attaches a property list dictionary for storing associated data or metadata. They are used for marking specific locations within page content for accessibility or application-specific purposes.

Before adding [Commit](07-commit.md) is called then the value specified is inserted directly into the content stream. There is no vetting of the tag so you need to ensure that the value is of a type which will make sense in the content stream.

To ensure that the tag does not interfere with other content it will be preceded by a space and a carriage return linefeed combination will be added after it. If the tag needs closing it is your responsibility to close the tag with a matching call on the same page.

## Example

None
