# SetTheme Function

Specify whether to use Windows themes or not.

## Syntax

```csharp
void SetTheme(bool useTheme)
void SetTheme(bool useTheme, bool noTheme)
```

## Params

| Name | Description |
| --- | --- |
| useTheme | Whether to use the current theme. |
| noTheme | Whether not to use the current theme. The default value is the negation of useTheme. |

## Notes

Sets the values of UseTheme and NoTheme. You will generally want to use the function which accepts only one parameter.

The theme is only relevant if you are using the MSHTML engine for IE9 or earlier. As such it is likely that this function will be deprecated in future releases of ABCpdf.

The theme is the user interface design for text boxes, buttons, combo boxes and other interactive features which may be found on web pages. Different versions of Windows have different themes. If you do not use the current theme (typically Windows XP/Aero Glass) you will get the default Windows 95 appearances.

The fact that you can set two different  values is a reflection of the fact that these two inputs correspond to the Windows flags DOCHOSTUIFLAG_THEME and DOCHOSTUIFLAG_NOTHEME respectively. While there seems little point in setting both  to the same boolean value, the fact that Windows allow it is why it is reflected in this function call. If UseTheme and NoTheme are the same  no theme is applied.

