# Chainable Function

Determines if an object is chainable.

## Syntax

```csharp
bool Chainable(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be tested. |
| return | Whether the object is chainable or not. |

## Notes

Use this method to determine if an object is chainable.

Some objects can be chained. A chunk of text may be chained from page to page on the output PDF. Similarly a web page may be chained from page to page.

This method allows you to determine if the object you have added is chainable or whether it is at the end of the chain.

Only text, PostScript images and web pages can be chainable. So your ID should have been obtained from a previous call to one of the AddImage family of calls or from AddTextStyled.

