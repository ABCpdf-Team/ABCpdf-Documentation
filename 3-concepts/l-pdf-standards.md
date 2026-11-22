# PDF Standards

## Intro

The PDF Standard was created by Adobe.

However to increase standardization and acceptance, Adobe moved this to an ISO Standard which is maintained and developed by the PDF Association.

ISO 32000-1, released in 2008, was the first ISO PDF standard and was based around the Adobe PDF 1.7 specification.

ISO 32000-2, released in 2017, described the PDF 2.0 standard.

In 2020 an update to ISO 32000-2 was released to correct and clarify the original standard.

As well as maintaining the PDF standard, the PDF Association also works on a number of related standards, the more relevant of which are detailed here.

## PDF/A

The PDF/A standard is based around specifying the features of PDF documents which make them suitable for long term archiving.

The standards are realized in ISO 19005 "Electronic document file format for long-term preservation". There are now four editions - PDF/A Part 1 to PDF/A Part 4.

There are variants of each standard tagged either B (basic) or A(accessible), so an A specification typically builds on a B standard rather than the other way round. As well as A and B standards there are also U standards which specify Unicode text requirements.

PDF/A Part 1 Level B conformance mandates features like font embedding to ensure that a PDF will display correctly even if a font is no longer available. It prohibits features like transparency because, at the point that the standard was created, many tools did not support transparency.

PDF/A Part 1 Level A conformance is essentially the same as Level B but it also requires features like Unicode text and a tagged PDF structure.

PDF/A Part 2 Level B is the base standard. It is essentially an updated version of Part 1 Level B, allowing features like transparency which had been prohibited in the original standard.

PDF/A Part 2 Level U is essentially the same as Level B but it mandates that all text must be held in Unicode format.

PDF/A Part 2 Level A is essentially the same as Level U but includes some elements related to tagged PDF. Many of these are semantic rather than structural and so it is difficult to validate in an automated system. For example it specifies that images of text should be tagged with the text seen in the image.

PDF/A Part 3 included new features to allow other file formats to be represented in a PDF/A compliant package. So it defines how one should create a compliant PDF in which the original document - for example a Word document - is embedded. In this way you have both a document which will appear in the same way as the original document but also an original file, in case that is required.

PDF/A Part 4 enhances the standard for use in conjunction with PDF 2.0.

## PDF/UA

The PDF/UA standard is based around Universal Accessibility.

It is documented in ISO 14289-1:2012 - "Document management applications — Electronic document file format enhancement for accessibility".

This standard requires that documents be tagged with appropriate structures which can supply semantic meaning to the document.

Using these structures PDF documents can be presented in a variety of alternative modes such as spoken language.

This is useful to people with disabilities who may find it difficult to navigate a more standard PDF.

## PDF/X

The PDF/X standard is a constrained version of the PDF standard for use when printing.

This standard is formalized in ISO 15930 "Prepress digital data exchange using PDF", of which there are now eight versions.

It mandates that certain useful print specific features be present. For example it requires that RGB color spaces be calibrated and that an output intent is provided.

It prohibits certain features which do not transition well to print - for example movies and sounds.
