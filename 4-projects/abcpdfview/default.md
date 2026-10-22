# ABCpdfView Example Project

## Project

This shows how to display and print PDF documents from a Windows Forms application.

It provides features such as viewing at different sizes and resolutions. It allows you to print documents that you are viewing. It presents a simple way of editing items in a PDF document.

Probably the core value of this project is in the printing code. This shows how to use ABCpdf in conjunction with the .NET printing APIs to send a PDF document to a printer.

There are a variety of approaches you can use for printing. For example you can export to XPS and then send that document direct to the spooler. However we have found that, as of 2019, the EMF based print process is still the most reliable method. XPS is a more sophisticated approach but relies on current hardware and up-to-date software which may not be available on all systems.

The PDF editing capabilities are interesting in that they show how you can edit items within a PDF document. However they are relatively unsophisticated and should be regarded as a base rather than code you can use directly in your projects.

At the heart of the project is the PDFControl, a Windows Forms user control which renders pages to the screen. It allows you to zoom in and out, change the resolution and move from page to page.

Printing uses a PrintDocument. Each page is rendered as an EMF metafile and then drawn onto the printed page.

A set of forms shows how to perform common page operations. You can add a text or image watermark, choosing the font, color, opacity, rotation and position. You can insert pages from another document, delete or extract a range of pages and rotate pages.

You can also select a block of text on the page and move it, change its wording, font or color, or delete it. This works by reading the page text as SVG and then modifying the matching operators in the content stream.

