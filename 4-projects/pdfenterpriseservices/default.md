# PDFEnterpriseServices Example Project

## Project

Normally when you use ABCpdf, it operates in process as part of your application.

In some situations it may be useful to have it operate out of process. This provides a number of benefits.

The simplest way to do this is to use the .NET Enterprise Services structures. These have gone through a variety of iterations - MTS, COM+ and currently .NET Enterprise Services. The names themselves are a bit of a misnomer. For example COM+ is not really COM plus something extra. COM is a way of calling functions in a DLL while COM+ is an architecture which can be used to host application services - two completely different things. Similarly .NET Enterprise Services is not entirely .NET as it relies on COM concepts for implementation.

A lot of what you can read on the internet states that .NET Enterprise Services is legacy. There is some truth in this as the architecture is based around technologies created many years ago. However the reality is that these technologies are still very much in use because the .NET equivalents are not that wonderful. The closest that exists is probably Windows Communication Foundation (WCF) but this is vastly complicated and difficult to control; cryptic config files and do-or-die options. The .NET Enterprise Services equivalent involves opening up the Component Services control panel, checking a few boxes and then watch the cabbages (your objects) spin. A bit of legacy yes, but also a whole lot of mature.

The PDFEnterpriseServices example project under the ABCpdf .NET menu item shows you how to set up a .NET Enterprise Services Component for converting HTML into PDF. This is relevant only for the MSHTML engine as both the ABCGecko and ABCChrome engines already operate out of process.

The code consists of a serviced component called PdfUtilities. This has two methods - UrlToPdf to convert a web page to PDF, and DocToPdf to convert a file - each of which returns the PDF as a byte array.

Two simple ASP.NET pages show how to call these methods from a web site. The comments explain the settings involved, such as the strong name, the COM+ application name, activation and access control.

