# GetEntryVersion Function

Get the minimum PDF version required for the use of a particular named entry.

## Syntax

```csharp
virtual PDFVersion GetEntryVersion(string entry)
```

## Params

| Name | Description |
| :---: | --- |
| entry | The name of the entry. |
| return | The PDF version. |

## Notes

Get the minimum PDF version required for the use of a particular named entry.

This function should be overridden by classes which inherit from this.

They should provide return values for the entries specific to the new class.

The PDFVersion type is a flags enumeration. Typically the flags indicate the version in which a feature was introduced. However they may also indicate the version in which it was deprecated. Some features are introduced in a PDF variant extension and then claimed in a later ISO version, so more than one flag may be set.

The PDFVersion enumeration may take the following values:

- None - No version information available.
- PDF10 - Introduced in PDF 1.0.
- PDF11 - Introduced in PDF 1.1.
- PDF12 - Introduced in PDF 1.2.
- PDF13 - Introduced in PDF 1.3.
- PDF14 - Introduced in PDF 1.4.
- PDF15 - Introduced in PDF 1.5.
- PDF16 - Introduced in PDF 1.6.
- PDF17 - Introduced in PDF 1.7.
- PDF17Obsolescent - Obsolescent in PDF 1.7.
- AdobeUndocumented - An undocumented Adobe extension.
- PDF17Extension3 - Introduced in PDF 1.7 Adobe Extension Level 3.
- PDF17Extension5 - Introduced in PDF 1.7 Adobe Extension Level 5.
- PDF20 - Introduced in PDF 2.0.
- PDF20Deprecated - Deprecated in PDF 2.0.
- PDF17ErrataDeprecated - Deprecated in the PDF 1.7 errata.
