# AnalyzeContent Function

Perform whole document analysis of page contents.

## Syntax

```csharp
void AnalyzeContent()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

This function scans the document and performs analysis of the contents.

Scanning the document content involves decompressing and parsing all the content in the document. As such it can be an expensive and time consuming process for large or complex documents.

For this reason the analysis is cached the first time this function is called. If you later change the content it is your responsibility to call this function to ensure that the analysis is updated.

Whole document analysis enables certain other optimizations such as [Font.Subset](../../fontobject/1-methods/subset.md).
