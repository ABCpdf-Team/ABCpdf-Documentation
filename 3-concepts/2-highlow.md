# High Level Ease with Low Level Power

## Intro

ABCpdf .NET combines the best of high level abstraction and low level power.

ABCpdf .NET is built as a programmatic PDF toolkit from the ground up. It provides **unmatched low-level control** combined with surgical precision.

- Operate directly on every element, every object and every atom of your document.
- Place every element, every image, every line, every chunk of text exactly where you want it.
- Produce output compliant with the PDF 2.0 specification.
- This is critical for generating complex, highly-structured documents like legal contracts, tax forms, or engineering drawings where pixel-perfect layout is non-negotiable.

However ABCpdf .NET also allows you to work at a higher level of abstraction. This gives you **unparalleled ease of use** - much like a powerful WYSIWYG editor.

- Read this Word document
- Add this HTML here.
- Add this styled text here, wrapping around the HTML I just added.
- Flow overflowing text seamlessly onto new pages.
- Certify the document with a signature..
- Stream the final PDF to a browser.

The true power lies in your ability to mix and match these high- and low-level approaches seamlessly. You are always in control, never needing to fight the engine's decisions.

## High

High-Level Approach: The **Doc** Object Methods and **Operations** namespace.

This is the most common and easiest way to get started. The Doc object provides a simplified, procedural API that abstracts away the underlying PDF complexity.

Think of it as giving commands like "Add a page," "Add this HTML," "Add some text here," "Save the file." The Doc object manages the current page, current position, fonts, colors, etc., for you automatically.

Key methods you use to do this include,

- AddImageUrl(string url), AddImageHtml(string html): The workhorses for HTML-to-PDF conversion.
- AddText(string text), AddTextStyled(string text): Adds text at the current position.
- AddImage(...): Adds an image from a file, stream, or .NET Bitmap.
- Page, Rect, Color, Font: Properties that set the context for the next operation.
- Save(), GetData(): Output the final PDF.

An analogy would be using a word processor like Microsoft Word. You focus on the content and basic formatting, and the software handles the layout engine behind the scenes.

This is best for: Quick tasks, HTML-to-PDF conversion, simple document creation, and merging. Most developers will spend 90% of their time here.

## Mid Level

Middle-Level Approach: The **Objects** Namespace

When you need more control over the structure of the document, you use the Objects and the Elements namespaces - object-oriented models for PDF content.

In ABCpdf, the Objects namespace contains classes that directly represent the **indirect objects** that make up a PDF file's internal structure, as defined by the Adobe PDF Reference manual.

The indirect objects are held in an ObjectSoup - a managed collection of objects of type **IndirectObject -** that together form the complete internal structure of the PDF, as defined by the Adobe PDF specification. The Doc object's higher-level methods (like AddText, AddImageUrl) ultimately translate their actions into manipulations of the objects within this soup.

All objects exist together in this single pool. Objects can reference each other freely, creating a interconnected web or "soup" of relationships. The ObjectSoup manages these connections and ensures consistency.

Specializations of the indirect objects provide useful features. A PixMap inherits from IndirectObject and has methods which alow you to resize, resample, compress or decompress. A Page has methods which allow you to get the content stream or the annotations. A Signature has methods which allow you to sign or to validate.

So the specializations are based on the PDF specification but they add features outside the specification.

## Low Level

Low-Level Approach: The **Elements** Namespace

The **IndirectObjects** that make up the document are based around the types defined in the PDF specification.

However they implement high level functions on those objects - operations which one needs but that are not part of the PDF specification.

For example one often needs to resize a bitmap but the process of resizing is not part of the PDF specification.

The **Elements** namespace is a literal translation of the PDF 2.0 Specification into an object structure.

Each object that is defined in the PDF specification is represented as a specialized subclass of the **Element** class.

Each of these objects has properties that directly reflect the properties as defined in the PDF specification.

The Elements link to each other so once you have a root you can reference all the other objects from the properties of this root.

The Elements namespace represents a controlled way to ensure that the properties you add and the changes you make are allowed in and compliant with the PDF 2.0 specification.

## Assembly

Assembly-Level Approach: The **Atoms** Namespace.

In the context of ABCpdf, an **Atom** is a class that represents one of the eight basic immutable data types defined by the PDF specification. Think of them as the **building blocks** or **primitive values** from which a PDF document is constructed.

Every complex structure in a PDF - a dictionary of properties, an array of coordinates, a stream of drawing commands - is ultimately built from simple atoms such as:

- Booleans
- Numbers
- Strings
- Names
- Arrays
- Dictionaries

Each IndirectObject and each Element contains an Atom - most commonly a Dictionary atom.

The IndirectObject specialization provides you with useful operations you can call into. It adds features to items defined in the PDF specification.

The Element structure ensures you only insert valid combinations of atoms and provides you with a menu of choices. It constrains you to the PDF specification.

However you do not absolutely need to have that help. If you want to operate outside the box you can operate on the raw atoms. You can do things like:

- **Creating Custom Annotations:** Adding sticky notes, links, or form fields with specific properties not directly supported by the high-level API.
- **Setting Rare PDF Attributes:** Manipulating esoteric or custom entries in the document catalog or page dictionaries.
- **Debugging:** Inspecting the precise internal structure of a PDF object to understand why a document is not behaving as expected.
- **Advanced Manipulation:** Programmatically altering the structure of a PDF after it has been created.

You can also use **OpAtoms** - one of the most powerful and low-level features in ABCpdf - allowing you to directly manipulate the **content streams** that define what is drawn on a PDF page.

So what is a **content stream**? A PDF page doe snot contain images and text in the way a Word document does. Instead, it contains a series of **instructions** written in a compact, postfix-notation language. This program is called a **content stream**. A graphics operator in this language is a keyword (like m for move or BT for Begin Text) followed by its required operands (like coordinates). For example, the instruction "100 200 m" means "move the current point to (100, 200)".

An **OpAtom** in ABCpdf is an object that represents a single one of these instructions or operators within a content stream. You can take your page content stream and turn it into an array of atoms. Then you can read through these atoms looking for particular drawing instructions.

Because of the way that this approach is designed it is incredibly fast and efficient. So using this power and efficiency you can do things like determine the colors and color spaces that are being used in a document or redact all text matching a particular pattern.

In summary, **Atoms are the raw assembly language of PDFs**. While you can build entire documents with the high-level Doc methods (AddText, AddImage), Atoms give you direct access to the instruction set, letting you write, read, and modify PDF pieces and drawing commands one operation at a time.
