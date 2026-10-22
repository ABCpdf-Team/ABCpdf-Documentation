# EntryTarget Property

## Notes

This property represents the destination target.

It is a required entry and defined as part of the PDF 1.0 specification.

The Target may be a PageObjectElement or, in the case of a remote destination, an Element containing a NumAtom indicating a page number. In this case page numbers use a zero rather than one based index.

In a PDF 2.0 document this property may be a StructureElementElement indicating the part of the document to which the destination refers.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 151, page 366.

The Target entry names the destination type, determining how the viewer positions the page view. Common types are XYZ (explicit left, top, zoom), Fit (fit page), FitH (fit width), FitV (fit height), FitR (fit rectangle), FitB, FitBH, and FitBV.
