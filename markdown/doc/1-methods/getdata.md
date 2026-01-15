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

Normally, you will want to save your documents using the Save method. However, sometimes you will need to obtain your PDF as raw data rather than in a file. The GetData method allows you to do this.

You may wish to write a PDF directly to a client browser rather than going through an intermediate file. The data you obtain using GetData can be written direct to an HTTP stream using Response.BinaryWrite. Similarly, you may wish to obtain raw data for insertion into a database.

The SaveOptions.Refactor setting determines whether duplicate and  redundant objects are eliminated when the document's data is obtained.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

The following code illustrates how one might add text to a PDF 
            and then write it direct to the client browser. This code is an 
            entire ASP.NET page - hello.aspx.

```csharp
<% @Page Language="C#" %>
<% @Import Namespace=" WebSupergoo.ABCpdf13" %>
<%
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
%>
```

## Results

![hello.asp](../../../../images/pdf/docsave.pdf.png) — hello.asp
