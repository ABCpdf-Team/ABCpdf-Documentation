# StructureElementElement Class

This class represents the structure element dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 323, page 558.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=566)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 355, page 721.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because OutlineItemElement.EntrySE, StructureElementElement.EntryP and StructureElementElement.EntryRef require it to be so.

A structure element represents one node in the logical structure tree of a tagged PDF document. Structure elements form a hierarchy mirroring the logical organization of the content: sections, paragraphs, headings, tables, and figures.

The S entry names the structure type, identifying the element role. Standard types cover document-level containers, block-level elements, and inline elements. Non-standard types must be mapped to standard ones via the role map.

The K entry references the children of this element. Children may be other structure elements, marked content references, object references, integers as MCID shortcuts, or inline dictionaries combining a page reference with an MCID.

The A entry holds attribute objects describing visual and structural properties. Attributes may specify placement, spacing, borders, color, and other properties. The C entry references class names in the ClassMap to inherit shared attribute sets.

The T entry provides a human-readable title for the element. The Alt entry provides an alternate description for figures and other non-text content to support screen readers.

The Lang entry specifies the natural language of the element content, overriding ancestor declarations and allowing multilingual documents to tag each section correctly.

The ActualText entry holds the Unicode text the element content represents, used when rendered glyphs do not directly map to the intended text, such as in ligatures or glyph substitutions.

The Ref entry holds an array of references to logically related structure elements, supporting cross-references within the structure tree.

The NS entry references the namespace to which this element type belongs. When absent, the element type is in the standard PDF namespace.

The PhoneticAlphabet and Phoneme entries support text-to-speech rendering by providing a phonetic transcription of the element content using a named phonetic alphabet.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.StructureElementElement`

## Methods

| Method | Description |
| --- | --- |
| [StructureElementElement](1-methods/01-structureelementelement.md) | Create a new StructureElementElement. |
| [AddKid](1-methods/02-addkid.md) | Adds a child StructureElementElement to this one. |
| [InsertKid](1-methods/03-insertkid.md) | Inserts a child StructureElementElement in a particular location under this one. |
| [GetBBox](1-methods/04-getbbox.md) | Get the bounding box for the structure element. |
| [SetBBox](1-methods/04-setbbox.md) | Sets the bounding box for the structure element. |
| [GetPage](1-methods/05-getpage.md) | Get the Page object for this particular structure element. |
| [SetPage](1-methods/06-setpage.md) | Sets the Page for this structure element. |
| [GetStyle](1-methods/07-getstyle.md) | Gets the text style for this structure element. |
| [SetParent](1-methods/08-setparent.md) | Sets the parent of this structure element. |
| [FindMcids](1-methods/09-findmcids.md) | Finds all the MCIDs referenced by this structure element and its children. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the structure element dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the structure element dictionary object. |
| [EntryP](2-properties/03-entryp.md) | Represents the "P" entry of the structure element dictionary object. |
| [EntryID](2-properties/04-entryid.md) | Represents the "ID" entry of the structure element dictionary object. |
| [EntryPg](2-properties/05-entrypg.md) | Represents the "Pg" entry of the structure element dictionary object. |
| [EntryK](2-properties/06-entryk.md) | Represents the "K" entry of the structure element dictionary object. |
| [EntryA](2-properties/07-entrya.md) | Represents the "A" entry of the structure element dictionary object. |
| [EntryC](2-properties/08-entryc.md) | Represents the "C" entry of the structure element dictionary object. |
| [EntryR](2-properties/09-entryr.md) | Represents the "R" entry of the structure element dictionary object. |
| [EntryT](2-properties/10-entryt.md) | Represents the "T" entry of the structure element dictionary object. |
| [EntryLang](2-properties/11-entrylang.md) | Represents the "Lang" entry of the structure element dictionary object. |
| [EntryAlt](2-properties/12-entryalt.md) | Represents the "Alt" entry of the structure element dictionary object. |
| [EntryE](2-properties/13-entrye.md) | Represents the "E" entry of the structure element dictionary object. |
| [EntryActualText](2-properties/14-entryactualtext.md) | Represents the "ActualText" entry of the structure element dictionary object. |
| [EntryRef](2-properties/15-entryref.md) | Represents the "Ref" entry of the structure element dictionary object. |
| [EntryAF](2-properties/16-entryaf.md) | Represents the "AF" entry of the structure element dictionary object. |
| [EntryNS](2-properties/17-entryns.md) | Represents the "NS" entry of the structure element dictionary object. |
| [EntryPhoneticAlphabet](2-properties/18-entryphoneticalphabet.md) | Represents the "PhoneticAlphabet" entry of the structure element dictionary object. |
| [EntryPhoneme](2-properties/19-entryphoneme.md) | Represents the "Phoneme" entry of the structure element dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
