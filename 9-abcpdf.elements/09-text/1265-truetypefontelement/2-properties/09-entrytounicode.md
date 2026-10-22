# EntryToUnicode Property

## Notes

Represents the "ToUnicode" entry of the truetype font dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.

The CMap stream in this entry maps character codes to Unicode values, enabling text extraction and search. Without it, text recovery depends on encoding heuristics that may not always give correct results.

The stream syntax and structure are the same as for type 1 fonts: beginbfchar and beginbfrange sections mapping source codes to UTF-16BE hex Unicode values.
