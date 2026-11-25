# ABCpdf .NET Documentation

![ABCpdf .NET](images/banner.jpg)

This repository is the official documentation for ABCpdf .NET, in Markdown: easy to read here on GitHub, to search, and
to give to AI tools. It is the same documentation as:

- the [online documentation](https://www.websupergoo.com/helppdfnet/default.htm) on our web site;
- the [compiled help (CHM)](https://www.websupergoo.com/abcpdf-download.aspx), a standalone help file. If you are
  doing lots of work with ABCpdf .NET it is worth downloading: it is fast and has good search.

If you use an AI assistant (Claude, ChatGPT, Copilot, Cursor and others), you can also connect it to our free
[MCP server](https://www.websupergoo.com/support-ai-assistants.aspx), so that it searches and reads the current
documentation before it answers.

This copy is updated automatically each day from the documentation on our web site, so please don't send changes
here: tell us about mistakes through [support](https://www.websupergoo.com/support.aspx) and we'll fix them at the
source.

---

The ABCpdf .NET documentation is the comprehensive, canonical resource for the ABCpdf .NET library, an
industry-leading component for the programmatic generation and manipulation of PDF documents. It provides the
essential foundation for integrating robust, world-class PDF functionality into .NET applications.

It is structured to support the entire development lifecycle, with resources for every need:

- **API reference:** exhaustive descriptions of namespaces, classes, methods and properties, with practical code
  examples for common tasks.
- **Conceptual overviews:** the key principles and architecture behind PDF generation and manipulation.
- **Step-by-step tutorials:** guided instructions for getting started and integrating core functionality quickly.
- **Advanced guides:** in-depth exploration of complex topics, including:
  - high-fidelity HTML-to-PDF conversion
  - document security, encryption and permissions
  - dynamic form creation and management
  - document optimization and performance tuning

This tiered structure lets newcomers and experienced developers alike find the precise information they need for
the task in hand.

## Contents

- [Introduction](index.md): [what it is](1-introduction/1-whatisit.md), [what's new](1-introduction/6-whatsnew.md)
  and more in [1-introduction](1-introduction)
- [Getting started](2-getting_started): [.NET essentials](2-getting_started/1-essentials.md),
  [a simple example](2-getting_started/2-simple.md), [coordinate spaces](2-getting_started/3-coordinates.md),
  [upgrading](2-getting_started/5-upgrading.md), [ABCpdf on Linux](2-getting_started/6-platforms.md)
- [Concepts](3-concepts): security, fonts, forms, images, HTML/CSS rendering, SVG, PDF standards and more
- [Examples](4-examples/index.md) and [projects](4-projects/index.md)
- The class reference, by namespace:
  - [ABCpdf14](5-abcpdf): the objects you use for page layout, and most of the time the only namespace you need.
    [Doc](5-abcpdf/doc/index.md) represents a PDF document; its companions include
    [XRect](5-abcpdf/xrect/index.md), [XHtmlOptions](5-abcpdf/xhtmloptions/index.md) and
    [XTextStyle](5-abcpdf/xtextstyle/index.md).
  - [ABCpdf14.Objects](6-abcpdf.objects): access to content already added, such as
    [Page](6-abcpdf.objects/page/index.md), [Field](6-abcpdf.objects/field/index.md) and
    [Signature](6-abcpdf.objects/signature/index.md).
  - [ABCpdf14.Atoms](7-abcpdf.atoms): low-level access to the raw PDF data structures.
  - [ABCpdf14.Operations](8-abcpdf.operations): complex operations with multiple parameters and callbacks.
  - [ABCpdf14.Javascript](8-abcpdf.javascript), [ABCpdf14.Elements](9-abcpdf.elements) and
    [ABCpdf14.Python](9-abcpdf.python).
- [Effects](9-effects): image effects

## License

See [LICENSE.md](LICENSE.md).
