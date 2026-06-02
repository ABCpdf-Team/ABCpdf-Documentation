# FromDoc Function

Gets the conformance identification from a document.

## Syntax

[C#]

```csharp
static PdfConformanceIdentification FromDoc(Doc doc, PdfConformance conformance)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | The document. |
| conformance | The conformance specification for which the identification is to be retrieved. |
| return | The conformance identification. |

## Notes

This method identifies the conformance a document is marked to satisfy.

It is possible that a document conforms to more than one specification (e.g. PDF/A-1 and PDF/X-1) so you need to indicate which specification you want to retrieve the identification for.

If you want to query the PDF/A conformance pass PdfA1b as the conformance argument. If you want to query the PDF/UA conformance level then pass PdfUA1. Both are simply arguments to specify the type of query rather than relating to A1b or UA1 specifically.

## Example

None
