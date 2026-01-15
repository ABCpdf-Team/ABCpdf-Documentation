# Code Samples and Projects

## Samples
There are many code examples in the documentation covering tasks like:
- [Adding text](../5-abcpdf/doc/1-methods/addtextstyled.htm)
- [Flowing text](../4-examples/02-textflow.htm)
- [Adding images](../4-examples/04-image.htm)

Every major object method or property has an accompanying code sample. For methods like [AddText](../5-abcpdf/doc/1-methods/addtext.htm) or [AddImageFile](../5-abcpdf/doc/1-methods/addimagefile.htm) see the linked samples.

Examples also cover operations like:
- [Rendering HTML pages](../5-abcpdf/doc/1-methods/addimageurl.htm)
- [Paged HTML renders](../5-abcpdf/doc/1-methods/addimagetochain.htm)
- [Watermarking](../5-abcpdf/doc/1-methods/addimagecopy.htm)
- [Appending PDF documents](../5-abcpdf/doc/1-methods/append.htm)
- [Drawing pages from one PDF into another](../5-abcpdf/doc/1-methods/addimagedoc.htm)

## Projects
Larger, more involved tasks are provided as complete example projects via the ABCpdf MSI installer (see the ABCpdf menu → Examples). Highlights:

### ABCpdf.Drawing Example Project
Parallels the `System.Drawing` namespace (e.g., `System.Drawing.Pen` → `WebSupergoo.ABCpdf13.Drawing.Pen`). See [System.Drawing Example](20-systemdrawing.htm).

### ABCpdfView Example Project
Displays and prints PDF from Windows Forms. Demonstrates reliable printing via Windows Printing APIs and basic PDF editing.

### AccessiblePDF Example Project
Shows tagging for Section 508/PDF/UA using [AccessibilityOperation.MakeAccessible](../8-abcpdf.operations/C-accessibilityoperation/1-methods/makeaccessible.htm). Demonstrates enhancing structure (headers, footers, tables, lists, sections, artifacts), merging tags, and extracting tag structure.

### AdvancedGraphics Example Project
Low-level PDF content streams and drawing operators; see [Advanced Graphics Example](17-advancedgraphics.htm).

### Annotations Example Project
Creating form fields and annotations, signatures and incremental updates; see [Fields, Markup and Movies Example](18-annotations.htm).

### PDFSurgeon Utility
View and edit PDF object trees and content streams in real time.

### FontUnembedment Example Project
Careful control of embedding/un-embedding/subsetting; see also [ReduceSizeOperation](../8-abcpdf.operations/B-reducesizeoperation/default.htm) and [FontObject](../6-abcpdf.objects/fontobject/default.htm).

### GlobalSign Example Project
Sign and validate signatures via GlobalSign. Background: [PDF Digital Signatures in C# – The Definitive Guide](https://www.websupergoo.com/abcpdf-pdf-digital-signatures.aspx).

### GetColors Example Project
Counts colors and color spaces referenced via [OpAtom](../7-abcpdf.atoms/opatom/default.htm) and [ContentStreamOperation](../8-abcpdf.operations/G-contentstreamoperation/default.htm).

### HTMLTables / PDFTable / WPFTable Example Projects
Create tables from HTML, programmatic control, or WPF. See [Small Table](09-table1.htm), [Large Table](10-table2.htm), and [WPF Tables](21-wpftables.htm).

### PDFEnterpriseServices Example Project
Out-of-process operation via .NET Enterprise Services for MSHTML HTML conversion.

### Print Example Project
Preferred printing approach via Windows APIs; alternatives include .NET printing and XPS.

### Redaction / ReferenceXObject / SwfExport / TaggedPDF / ValidatePDF / Viewer3D / WebPageSnapshot
A range of projects covering redaction, external image references, SWF export, low-level tagging, object validation, 3D viewing (U3D/PRC), snapshotting live DOM, etc.

### ABCpdf Example Web Site
ASP.NET demo site for creating and editing a document online.
