# CrossReferenceStreamElement Class

This class represents the cross-reference stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=58)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 65.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A cross-reference stream, introduced in PDF 1.5, replaces or supplements the traditional cross-reference table. It records the byte offset or object stream location of every indirect object in the file revision, stored as a compressed stream rather than plain text.

The stream body contains fixed-width binary records, one per cross-reference entry. The W entry specifies the byte width of each field within a record. A record has three fields: type, location, and generation or index.

A type-0 entry marks a free object. A type-1 entry gives the byte offset of an in-use object in the file. A type-2 entry gives the object stream number and the index within that stream for a compressed object.

The Index entry lists pairs of integers specifying which object numbers the stream covers. Each pair is a starting object number and a count. When absent, the stream covers objects starting at zero for the full Size count.

The Prev entry gives the byte offset of the previous cross-reference stream or table, enabling traversal of all revisions. The cross-reference stream also carries the trailer dictionary entries (Root, Encrypt, Info, ID) that were previously in a separate trailer dictionary.

Because the cross-reference stream is itself a compressed stream, a reader must be able to locate and decode it before it can find any other object. The stream's own dictionary entries must therefore not reference other indirect objects that require cross-reference lookup to resolve.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CrossReferenceStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [CrossReferenceStreamElement](1-methods/01-crossreferencestreamelement.md) | Create a new CrossReferenceStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the cross-reference stream dictionary object. |
| [EntrySize](2-properties/03-entrysize.md) | Represents the "Size" entry of the cross-reference stream dictionary object. |
| [EntryIndex](2-properties/04-entryindex.md) | Represents the "Index" entry of the cross-reference stream dictionary object. |
| [EntryPrev](2-properties/05-entryprev.md) | Represents the "Prev" entry of the cross-reference stream dictionary object. |
| [EntryW](2-properties/06-entryw.md) | Represents the "W" entry of the cross-reference stream dictionary object. |
| [EntryRoot](2-properties/07-entryroot.md) | Represents the "Root" entry of the cross-reference stream dictionary object. |
| [EntryEncrypt](2-properties/08-entryencrypt.md) | Represents the "Encrypt" entry of the cross-reference stream dictionary object. |
| [EntryInfo](2-properties/09-entryinfo.md) | Represents the "Info" entry of the cross-reference stream dictionary object. |
| [EntryID](2-properties/10-entryid.md) | Represents the "ID" entry of the cross-reference stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
