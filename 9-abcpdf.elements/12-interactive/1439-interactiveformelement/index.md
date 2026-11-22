# InteractiveFormElement Class

This class represents the interactive form dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=439)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 525.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.InteractiveFormElement`

An interactive form dictionary (AcroForm) is the root of a document's interactive form structure. It lists all top-level fields and supplies document-wide defaults for appearance and submission behaviour.

The Fields array lists only top-level fields; child fields are accessed through each field's Kids array. The CO array specifies the calculation order. The DR dictionary holds default resources for rendering field appearances.

The NeedAppearances flag delegates appearance generation to the viewer. SigFlags records signature-related properties. The XFA entry holds XFA form data for forms built with XML Forms Architecture.

## Methods

| Method | Description |
| --- | --- |
| [InteractiveFormElement](1-methods/01-interactiveformelement.md) | Create a new InteractiveFormElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFields](2-properties/01-entryfields.md) | Represents the "Fields" entry of the interactive form dictionary object. |
| [EntryNeedAppearances](2-properties/02-entryneedappearances.md) | Represents the "NeedAppearances" entry of the interactive form dictionary object. |
| [EntrySigFlags](2-properties/03-entrysigflags.md) | Represents the "SigFlags" entry of the interactive form dictionary object. |
| [EntryCO](2-properties/04-entryco.md) | Represents the "CO" entry of the interactive form dictionary object. |
| [EntryDR](2-properties/05-entrydr.md) | Represents the "DR" entry of the interactive form dictionary object. |
| [EntryDA](2-properties/06-entryda.md) | Represents the "DA" entry of the interactive form dictionary object. |
| [EntryQ](2-properties/07-entryq.md) | Represents the "Q" entry of the interactive form dictionary object. |
| [EntryXFA](2-properties/08-entryxfa.md) | Represents the "XFA" entry of the interactive form dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
