# GetPageNumber Function

Get the page number for a particular page object.

## Syntax

```csharp
int GetPageNumber(Page page)
int GetPageNumber(int pageID)
```

## Params

| Name | Description |
| :---: | --- |
| page | The Page object. |
| pageID | The Page IndirectObject ID. |
| return | The page number. |

## Notes

Gets the page number for a particular page object.

The object can be specified either using a Page object or an IndirectObject ID.

The page number is a one based index - the first page is number one.
