# Paged HTML Example

This example shows how to import an HTML page into a multi-page PDF document.

> **How ABCpdf .NET Masterfully Solves HTML-to-PDF Conversion Challenges.** ABCpdf .NET eliminates the common headaches of HTML-to-PDF conversion by leveraging the power of multiple, industry-standard browser engines, providing unmatched flexibility and reliability.
>
> **Multi-Engine Rendering for Perfect Fidelity:**  
> ABCpdf is not limited to a single renderer. It includes a suite of engines, allowing you to choose the best fit for your needs:
>
> - **ABCChrome (e.g., ABCChrome146):** The current default, offering best-in-class support for modern HTML5, CSS3, and JavaScript, ensuring pixel-perfect results matching the Chrome browser.
> - **The WebKit Engine:** A lightweight, high-performance option ideal for server environments with restricted permissions or stripped-down operating systems, where larger engines cannot be deployed.
> - **Legacy Engines (Gecko/Firefox & IE/MSHTML):** Provide robust fallback options for specialized compatibility requirements.
>
> This multi-engine approach guarantees that complex, modern web content—including Flexbox, Grid, and web fonts—is rendered with absolute accuracy.
>
> **Beyond Rendering: Structure and Professional Polish:**  
> ABCpdf .NET excels at creating professional, accessible documents, not just image-like snapshots. Using the current HTML engine you get all of the following and more:
>
> - **Preservation of Structure:** Using the [WebPageOperation](../8-abcpdf.operations/q-webpageoperation/index.md) class you can automatically maintain the logical tag structure and document outline from well-formed HTML, ensuring output is accessible (PDF/UA compliant) and retains selectable text and functional hyperlinks.
> - **Advanced Pagination with Headers/Footers:** Using the WebPageOperation class, you can seamlessly inject consistent headers, footers, page numbers, and page totals across every page of the generated PDF, after the main content is rendered. This allows for professional document assembly without altering the original HTML.
> - **Intelligent Dynamic Content Handling:** ABCpdf .NET can monitor the HTML document for ongoing changes after the initial load. Using the [RepaintDelay](../5-abcpdf/xhtmloptions/2-properties/repaintdelay.md) it intelligently detects activity such as AJAX calls, DOM manipulations, and animations, and automatically waits for these processes to complete before rendering the PDF. This ensures all dynamically loaded content is fully present in the final output, eliminating issues with missing or partially rendered data.
> - **Custom JavaScript Injection:** ABCpdf allows you to inject and execute custom JavaScript to be run in the web page before the conversion to PDF. This enables you to manipulate DOM content, click elements, hide unwanted sections, or wait for specific application state flags before triggering the conversion, giving you precise control over both the final content and the exact moment rendering occurs. You can also return values based from the script which can be useful for validating the page or querying the web content. See the [OnLoadScript](../5-abcpdf/xhtmloptions/2-properties/onloadscript.md) property for details.
> - **Internal Link Remapping:** ABCpdf can automatically parse the generated PDF structure and intelligently convert qualified external hyperlinks (e.g., original-site.com/page.html#section) into internal document links that point to the corresponding content or destination within the final PDF itself. This ensures the link structure works entirely internally, creating a seamless, self-contained document experience without relying on external web pages.
> - **Font Fidelity:** When converting HTML to PDF, ABCpdf's rendering engine actively embeds the fonts used in the document directly into the PDF file. This ensures text is displayed portably and consistently for all viewers, even if they don't have those specific fonts installed on their system. Crucially, the engine understands and respects @font-face CSS rules, allowing it to successfully download, process, and embed web fonts (such as those from Google Fonts or from a local URL) just like a modern web browser would, preserving the intended design and layout of the original webpage.
> - **Content Tagging and PDF Coordinate Mapping:** You can pre-tag specific HTML elements with custom attributes (e.g., abcpdf-tag-visible=""). After conversion, the ABCpdf API allows you to retrieve the precise coordinates (X, Y, width, height) and page number of where that tagged content was rendered in the final PDF. This is invaluable for **post-processing automation**, such as programmatically adding annotations, stamps, or form fields directly onto specific content in the generated document, based on its semantic meaning rather than a fixed layout.
> - **Automatic Form Field Conversion:** ABCpdf can intelligently parse HTML form elements (like input fields, checkboxes, radio buttons, and dropdowns) and automatically convert them into fully functional, native PDF form fields (AcroForms) within the generated document. This preserves the interactivity of the original web form, allowing users to fill the PDF without any loss of functionality, making it ideal for generating dynamic forms from web applications.
> - **WebPageSnapshot for State-Dependent Content:** The WebPageSnapshot example project demonstrates how to capture the *current, in-memory DOM state* of a web page (including user interactions, unsaved form data, or dynamically generated content) and serialize it into a self-contained HTML snapshot. This snapshot, rather than just a URL, is then passed to ABCpdf for conversion. This is critical for accurately capturing content that depends on a **specific user's state or session** (e.g., a logged-in user's dashboard, a partially completed form, or the results of client-side calculations), ensuring the PDF reflects exactly what the user saw, even if that state cannot be reproduced from the URL alone.
> - **Flexible Media Type Selection:** While ABCpdf defaults to using **"print"** CSS media queries to generate a cleaner, paged layout, this can sometimes be undesirable if the print stylesheet is poorly implemented, untested, or simply not present. In such cases, the library allows you to override the default and force the use of **"screen"** media styles instead. This ensures the final PDF accurately mirrors the familiar, visually rich layout users see in their browser, bypassing potentially broken or minimalist print CSS to guarantee a reliable and visually consistent output.
> - **Granular Page Break Control:** ABCpdf provides comprehensive control over pagination by respecting CSS rules specifying behavior for paged media output. You can use standard print directives like page-break-before: always;, page-break-after: avoid;, or page-break-inside: avoid; to prevent orphaned headings, keep tables and images intact, and ensure logical content flow. For advanced pagination scenarios, ABCpdf enables you to inject custom JavaScript before conversion to dynamically analyze the DOM and intelligently insert or modify page break indicators. This allows you to implement complex, application-specific breaking logic—such as ensuring figures and captions stay together or preventing breaks within critical data sets—that goes beyond static CSS rules, ensuring optimal readability and structure in the final PDF.
> - **FireShield Security Sandbox:** ABCpdf includes the **FireShield** security module, which provides a robust, isolated sandbox environment for HTML rendering. This containment layer prevents potentially malicious or unstable web content—such as scripts, plugins, or active content—from compromising the stability and security of the host server or application. By executing conversions within this shielded environment, FireShield ensures that server integrity and performance are maintained, which is critical for processing untrusted or third-party HTML content in automated workflows.
> - **High-Volume, Thread-Safe Architecture:** ABCpdf is engineered for enterprise-scale deployment, utilizing a sophisticated and efficient resource management system. It employs a **shared, pooled engine model** where multiple threads can safely and simultaneously request conversions without contention. This approach maximizes throughput and minimizes memory overhead, making it highly scalable and reliably suited for high-volume, server-side processing where stability and performance under load are critical.
>
> By combining superior rendering engines with powerful post-processing tools, ABCpdf .NET delivers a complete, industrial-strength solution for converting web content into polished, accessible, and professional PDF documents.

## Setup

We first create a Doc object and inset the edges a little so that the HTML will appear in the middle of the page.

```csharp
using var doc = new Doc();
doc.Rect.Inset(72, 144);
```

## Features

We set some HTML options to choose the HTML engine and features we are interested in. The defaults assigned here are set up for ease of development and you may wish to change some for release.

```csharp
doc.HtmlOptions.Engine = EngineType.Chrome146;
doc.HtmlOptions.UseScript = true; // enable JavaScript
doc.HtmlOptions.Media = MediaType.Print; // Or Screen for a more screen oriented output
doc.HtmlOptions.InitialWidth = 800; // In case we have a responsive site which is non-specific on good widths

//doc.HtmlOptions.RepaintDelay = 500; // Only required if you have AJAX or animated content such as graphs
//doc.HtmlOptions.IgnoreCertificateErrors = false; // Disabled for ease of debugging
//doc.HtmlOptions.FireShield.Policy = XHtmlFireShield.Enforcement.Deny; // Disabled for ease of debugging
```

## Page

We add the first page of HTML. We save the returned ID as this will be used to add subsequent pages.

```csharp
doc.Page = doc.AddPage();
int id = doc.AddImageUrl("https://www.yahoo.com/");
```

## Chain

We now chain subsequent pages together. We stop when we reach a page which wasn't truncated.

```csharp
while (true) {
  doc.FrameRect(); // add a black border
  if (!doc.Chainable(id))
    break;
  doc.Page = doc.AddPage();
  id = doc.AddImageToChain(id);
  if (doc.PageCount > 5)
    break;
}
```

## Save

Finally we save.

```csharp
doc.Save("pagedhtml.pdf");
```

## Results

We get the following output.

|  |  |
| --- | --- |
| ![pagedhtml.pdf \[Page 1\]](../images/pdf/pagedhtml.pdf.png)<br>pagedhtml.pdf \[Page 1\] | ![pagedhtml.pdf \[Page 2\]](../images/pdf/pagedhtml.pdf2.png)<br>pagedhtml.pdf \[Page 2\] |
