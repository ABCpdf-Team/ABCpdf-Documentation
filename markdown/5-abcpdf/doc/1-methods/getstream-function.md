# GetStream Function

Gets a document as raw data stream.

## Syntax

```csharp
Stream GetStream()
```

## Params

| Name | Description |
| --- | --- |
| return | The PDF document as a stream. |

## Notes

Returns a stream for raw PDF data.

- Useful for streaming large documents directly to the browser or other consumers.
- Prefer `GetStream` for documents larger than 2 GB (due to CLR per-object limits with `GetData`). Dispose the returned stream promptly.
- `SaveOptions.Refactor` controls elimination of duplicate/redundant objects.
- See notes on browser/Acrobat interactions (IE, HTTPS, compression, caching) when streaming PDFs.

## Example

ASP.NET page streaming a PDF inline to the browser in chunks.

```csharp
// hello.aspx (C#)
Doc theDoc = new Doc();
theDoc.FontSize = 96;
theDoc.AddText("Hello World");
using (Stream theStream = theDoc.GetStream()) {
    Response.Clear();
    Response.ContentType = "application/pdf";
    Response.AddHeader("content-disposition", "inline; filename=MyPDF.PDF");
    Response.AddHeader("content-length", theStream.Length.ToString());
    long theLen = theStream.Length;
    byte[] theData = new byte[theLen >= 32768 ? 32768 : (int)theLen];
    while (theLen > 0) {
        theStream.Read(theData, 0, theData.Length);
        Response.BinaryWrite(theData);
        theLen -= theData.Length;
        if (theLen < theData.Length && theLen > 0)
            theData = new byte[(int)theLen];
    }
}
Response.End();
```

## Results

![hello.asp](../../../../images/pdf/docsave.pdf.png) — hello.asp
