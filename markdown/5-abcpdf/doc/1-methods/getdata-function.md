# GetData Function

Saves a document to memory.

## Syntax

```csharp
byte[] GetData()
```

## Params

| Name | Description |
| --- | --- |
| return | The PDF document as an array of bytes. |

## Notes

Returns raw PDF bytes instead of saving to a file.

- Useful for streaming to browsers (`Response.BinaryWrite`) or storing in databases.
- `SaveOptions.Refactor` controls elimination of duplicate/redundant objects.
- See notes on browser/Acrobat interactions (IE, HTTPS, compression, caching) when streaming PDFs.

## Example

ASP.NET page streaming a PDF inline to the browser.

```csharp
// hello.aspx (C#)
Doc theDoc = new Doc();
theDoc.FontSize = 96;
theDoc.AddText("Hello World");
byte[] theData = theDoc.GetData();
Response.Clear();
Response.ContentType = "application/pdf";
Response.AddHeader("content-disposition", "inline; filename=MyPDF.PDF");
Response.AddHeader("content-length", theData.Length.ToString());
Response.BinaryWrite(theData);
Response.End();
```

## Results

![hello.asp](../../../../images/pdf/docsave.pdf.png) — hello.asp
