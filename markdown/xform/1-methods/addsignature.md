# AddSignature Function

Add unsigned signature field.

## Syntax

```csharp
Signature AddSignature(XRect rect, string name)<br> Signature AddSignature(XRect rect, string name, bool minimal)
```

## Params

| Name | Description |
| --- | --- |
| rect | Rectangle of the form field |
| name | Name of the form field |
| minimal | Whether to add a minimal signature (default false) |
| return | Form field object |

## Notes

Add unsigned signature field. To add an invisible field provide an empty rectangle. By default we add a maximal signature rather than a minimal one - one with placeholder values where elements are still to be completed. This minimizes the number of changes during an incremental update and means that Acrobat is less likely to complain about a change it does not understand. However while this may be good for Acrobat, other less capable software may not be able to tell the difference between a placeholder and a real value and may be confused. In this type of situation you may wish to add a minimal signature containing only those elements that are absolutely necessary.

