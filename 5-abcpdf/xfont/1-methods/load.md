# Load&nbsp;Function

Loads a  font from file.

## Syntax

[C#]

```csharp
XFont[]&nbsp;Load(string path)
```

## Params

| **Name** | **Description** |
| --- | --- |
| path | The path to the file. This file must remain in place. |
| return | The set of loaded fonts. |

## Notes

Loads a font from file.

The font is placed in the global font store and will be available to all ABCpdf .NET objects.

Do not remove the font file without first calling [Unload](unload.md) on the font as objects may be relying on it.

