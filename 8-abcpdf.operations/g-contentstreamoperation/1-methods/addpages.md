# AddPages Function

Add and scan selected pages from the document.

## Syntax

```csharp
void AddPages()
void AddPages(int pageNumber)
void AddPages(int startPageNumber, int endPageNumber)
void AddPages(int pageNumber, StreamObject[] layers)
```

## Params

| Name | Description |
| :---: | --- |
| pageNumber | The number of the page to be processed. This is a one based index. |
| startPageNumber | The number of the first page to be processed. This is a one based index. |
| endPageNumber | The number of the last page to be processed. This is a one based index. |
| layers | The layers to be scanned. |

## Notes

Add and scan selected pages from the document.

If no arguments are supplied then all pages will be added.
