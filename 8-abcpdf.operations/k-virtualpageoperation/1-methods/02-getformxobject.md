# GetFormXObject Function

Get the current page as a compressed FormXObject.

## Syntax

```csharp
FormXObject GetFormXObject()
```

## Params

| Name | Description |
| :---: | --- |
| return | The FormXObject. |

## Notes

Get the current page as a compressed FormXObject.

This function copies the content so that the FormXObject reflects the current state.

However you can continue to use the virtual page and then later obtain a new FormXObject reflecting the then updated content.
