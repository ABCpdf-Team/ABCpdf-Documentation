# GetData Function

Saves a document to memory.

## Syntax

```csharp
byte[] GetData()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | The PDF document as an array of bytes. |

## Notes

Normally, you will want to save your documents using the [Save](save.md) method. However, sometimes you will need to obtain your PDF as raw data rather than in a file. The GetData method allows you to do this.

You may wish to write a PDF directly to a client browser rather than going through an intermediate file. The data you obtain using GetData can be written direct to an HTTP stream using Response.BinaryWrite. Similarly, you may wish to obtain raw data for insertion into a database.

The [SaveOptions.Refactor](../../xsaveoptions/2-properties/refactor.md) setting determines whether duplicate and redundant objects are eliminated when the document's data is obtained.

> **PDFs and Internet Explorer.** The combination of Internet Explorer and Acrobat is not always trouble free - particularly under https or using older versions of Explorer. It can be difficult to know exactly where the problem lies because there is an interaction of the Operating System, Explorer and Acrobat. Any of these can be the cause.
>
> Sometimes, Explorer may get 'stuck' on a particular content type and insist on displaying your PDF as HTML. In this case, you will see random text starting with %PDF. Sometimes, this can happen if you stream PDF data to a window which was previously displaying HTML.
>
> Sometimes, server-side debugging results in extra data being inserted into the content stream. While this may not matter for HTML, it will corrupt binary documents like PDF.
>
> Sometimes, your code may inadvertently insert extra data into the content stream. Again, this will corrupt the PDF. Error messages are a common cause of this kind of corruption.
>
> HTTP compression may result in PDF streams being compressed before return to the browser. While browsers are able to deal with this type of compression, Acrobat may not be able to. You can see if this type of compression is being used by examining the headers returned to the browser using a tool like IEWatch. If you are using IIS 6 compression, you can disable it on a page by page basis using the IIS Metabase Explorer from the IIS 6 resource kit.
>
> Sometimes, the use of HTTPS with PDF content can be problematic. For example, see [Microsoft KB812935](http://support.microsoft.com/kb/812935).
>
> For testing purposes, you may wish to change the content-disposition from 'inline' to 'attachment'. This will allow you to download the data rather than view it in your browser. You can then check the downloaded document using Acrobat or a hex editor.
>
> Alternatively, if the problem is that PDFs seem to be cached you may wish to check the 'Enable Content Expiration' checkbox you will find under the Web Site Properties.
>
> We would suggest two steps:
>
> 1. Your first step should be to eliminate ABCpdf as the cause. Why not save the PDF to disk at the same time as sending it to the client? That way you can establish that the PDF is fine. If you want to take it further, you can then read the PDF data from disk and stream it direct to the client.
> 2. The example site streams PDF data direct to the client. So, install the example site into a new virtual directory and establish if the same issue exists for the example site. If it works, then it's simply a matter of moving your current code base and the example site code base towards each other until you find the cause of the problem.

## Example

The following code illustrates how one might add text to a PDF and then write it direct to the client browser. This code is an entire ASP.NET page - hello.aspx.

This is how you return a PDF from an ASP.NET page to the browser, to display inline or download with a file name. Use "inline" in the content-disposition header to display it in the browser or "attachment" to download it.

```csharp
<% @Page Language="C#" %>
<% @Import Namespace=" WebSupergoo.ABCpdf14" %>
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

![hello.asp](../../../images/pdf/docsave.pdf.png)  
hello.asp
