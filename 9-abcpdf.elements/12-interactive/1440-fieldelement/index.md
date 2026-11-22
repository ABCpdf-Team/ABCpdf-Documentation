# FieldElement Class

This class represents the field dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 432.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=440)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=442)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because FDFFieldElement.EntryKids, FDFTemplateElement.EntryFields, FieldElement.EntryKids, InteractiveFormElement.EntryCO, InteractiveFormElement.EntryFields, ResetFormActionElement.EntryFields, SubmitFormActionElement.EntryFields and WidgetAnnotationElement.EntryParent require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FieldElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.CheckboxFieldElement`](../0022-checkboxfieldelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ComboFieldElement`](../1453-combofieldelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ListFieldElement`](../1453-listfieldelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.PushbuttonFieldElement`](../0025-pushbuttonfieldelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.RadioFieldElement`](../0026-radiofieldelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.SignatureFieldElement`](../1454-signaturefieldelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.TextFieldElement`](../1452-textfieldelement/index.md)

A field dictionary is the core dictionary for an interactive form field. It holds the field type, value, default value, flags, and the widget annotations that represent the field on screen.

Fields are organised into a tree through Parent and Kids entries. The T entry holds the partial field name; concatenating all T values from root to leaf with period separators forms the fully qualified name used for data export.

The FT entry names the field type: Tx for text, Ch for choice, Btn for button, Sig for signature. The Ff integer controls behaviour with type-specific flag bits.

The V and DV entries hold current and default values. The DA, Q, DS, and RV entries control text rendering in text and choice fields.

## Methods

| Method | Description |
| --- | --- |
| [FieldElement](1-methods/01-fieldelement.md) | Create a new FieldElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [WidgetAnnotationElement](2-properties/01-widgetannotationelement.md) | Any WidgetAnnotationElement associated with this Field. |
| [EntryFT](2-properties/02-entryft.md) | Represents the "FT" entry of the field dictionary object. |
| [EntryParent](2-properties/03-entryparent.md) | Represents the "Parent" entry of the field dictionary object. |
| [EntryKids](2-properties/04-entrykids.md) | Represents the "Kids" entry of the field dictionary object. |
| [EntryT](2-properties/05-entryt.md) | Represents the "T" entry of the field dictionary object. |
| [EntryTU](2-properties/06-entrytu.md) | Represents the "TU" entry of the field dictionary object. |
| [EntryTM](2-properties/07-entrytm.md) | Represents the "TM" entry of the field dictionary object. |
| [EntryFf](2-properties/08-entryff.md) | Represents the "Ff" entry of the field dictionary object. |
| [EntryV](2-properties/09-entryv.md) | Represents the "V" entry of the field dictionary object. |
| [EntryDV](2-properties/10-entrydv.md) | Represents the "DV" entry of the field dictionary object. |
| [EntryAA](2-properties/11-entryaa.md) | Represents the "AA" entry of the field dictionary object. |
| [EntryDA](2-properties/12-entryda.md) | Represents the "DA" entry of the field dictionary object. |
| [EntryQ](2-properties/13-entryq.md) | Represents the "Q" entry of the field dictionary object. |
| [EntryDS](2-properties/14-entryds.md) | Represents the "DS" entry of the field dictionary object. |
| [EntryRV](2-properties/15-entryrv.md) | Represents the "RV" entry of the field dictionary object. |
| [EntryOpt](2-properties/16-entryopt.md) | Represents the "Opt" entry of the field dictionary object. |
| [EntryMaxLen](2-properties/17-entrymaxlen.md) | Represents the "MaxLen" entry of the field dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
