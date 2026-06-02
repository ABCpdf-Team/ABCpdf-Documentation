# Append Function

Appends a PDF to the end of the document.

## Syntax

[C#]

```csharp
void Append(Doc doc)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | The document to add to the end of this one. |

## Notes

Use this method to append one PDF to the end of another one.

Individual pages from one PDF can be drawn into another using the [AddImageDoc](addimagedoc.md) method.

If you are inserting a number of pages it is much faster to use the Append method than to draw pages individually. It also has the advantage of maintaining other information such as bookmarks.

If you are inserting pages that contain [form](xform/default.md) fields, you may want to call [MakeFieldsUnique](xform/1-methods/makefieldsunique.md) to avoid sharing fields across pages.

The [SaveOptions.Refactor](xsaveoptions/2-properties/refactor.md) setting determines whether duplicate and redundant objects are eliminated. The [SaveOptions.Preflight](xsaveoptions/2-properties/preflight.md) setting determines whether objects in the destination document are validated before this operation is performed.

Unless the document and the pages are big in terms of memory use and have many common objects, it is faster to disable SaveOptions.Refactor and SaveOptions.Preflight for adding the pages and enable them for saving the document.

---
How ABCpdf .NET is Masterful. While many PDF libraries struggle with the inherent complexities of merging documents, the ABCpdf .NET library is specifically engineered to handle these operations robustly and predictably. It is designed with a deep understanding of the PDF specification, ensuring that the final combined document is not just a concatenation of pages, but a coherent, professionally integrated whole.

Here is how ABCpdf directly addresses the common pitfalls of PDF merging:

ABCpdf goes beyond simply copying page content. It intelligently merges the internal document structure to preserve critical elements that other libraries often lose.

Bookmarks & Outlines: ABCpdf meticulously preserves bookmarks from all source documents. It correctly remaps all destination page references, ensuring that every bookmark in the merged document points accurately to its corresponding page. If required it is easy to write code to re-nest these bookmarks logically, providing a clear structure for the end-user.

Hyperlinks & Annotations: All annotations, including hyperlinks (both internal and external), form fields, and comments, are preserved and their actions are correctly rewritten to function within the new combined document. Internal links that point to other pages within the source documents will continue to work seamlessly.

Form Fields (AcroForms): ABCpdf expertly handles forms to prevent data loss and conflicts. Using the MakeFieldsUnique function resolves naming conflicts between form fields from different documents, ensuring all fields remain functional and accessible without overwriting each other.

Metadata Handling: The library provides flexible options for managing document metadata (Title, Author, etc.), allowing you to retain the metadata from a specific document, merge values, or set entirely new values for the combined output.

Tag Structure: ABCpdf .NET expertly handles the document tag structure essential for accessibility and reflow. Unlike simpler libraries that often strip this metadata during operations like appending, ABCpdf intelligently merges the logical tree of tags from source documents. It preserves critical semantic elements like headings, lists, and alt-text, ensuring the final output remains accessible and compliant with standards like PDF/UA. This robust handling allows developers to confidently create inclusive, professional-grade documents without losing vital structure.

A key strength of ABCpdf is its sophisticated handling of the resources that define a PDF's look and feel.

Fonts: ABCpdf automatically ensures all required fonts are embedded in the final document. It expertly manages duplicate fonts, including subsets, to avoid unnecessary file bloat while guaranteeing that text renders perfectly on every system. For the complete elimination of any duplicates, after the append you should use the [ReduceSizeOperation](8-abcpdf.operations/B-reducesizeoperation/default.md) to combine and re-subset any similar fonts.

Images, Color Spaces, and XObjects: The library diligently consolidates all resources like images, patterns, and color profiles, preventing duplicates and ensuring visual consistency across all appended pages.

ABCpdf is built for reliability and efficiency, even with large or complex documents.

Handling Signed Documents: ABCpdf follows the PDF specification rigorously. Any modification, including appending pages, will invalidate existing digital signatures. The correct and expected behavior here is that the signatures should report their original information such as the signer and the trust level but that the document has been modified. However by using the [Incremental](xsaveoptions/2-properties/incremental.md) save option you can allow the client to revert back to the original signed version.

Performance and Scalability: The engine is optimized for low memory consumption and high speed. It processes documents in a streamlined manner, making it suitable for server-side applications where merging large documents or processing high volumes of files is a requirement.

Robust Error Handling: ABCpdf is designed to be resilient against malformed or non-standard PDFs, providing clear error messages and graceful failure handling to make your application more stable.

Unlike simpler libraries that provide a basic "append" function with unpredictable results, ABCpdf .NET offers a true document engineering solution. It understands that merging PDFs is more than just combining pages—it's about integrating complex data structures, resources, and interactive elements into a single, polished, and fully functional document.

By choosing ABCpdf, developers can implement merge functionality with the confidence that bookmarks, links, forms, and visual fidelity will be preserved, eliminating the need for extensive custom code to handle edge cases and ensuring a high-quality result for end-users.

---

## Example

The following code snippet illustrates how one might join two PDF documents together.

[C#]

```csharp
using var doc1 = new Doc();
doc1.FontSize = 192;
doc1.TextStyle.HPos = 0.5;
doc1.TextStyle.VPos = 0.5;
doc1.AddText("Hello");
using var doc2 = new Doc();
doc2.FontSize = 192;
doc2.TextStyle.HPos = 0.5;
doc2.TextStyle.VPos = 0.5;
doc2.AddText("World");
doc1.Append(doc2);
doc1.Save("docjoin.pdf");
```

![](../../../images/pdf/docjoin.pdf.png)
docjoin.pdf [Page 1]

Also see example code in: [CustomFont CustomFont Function](8-abcpdf.operations/R-customfont/1-methods/01-customfont.md).
