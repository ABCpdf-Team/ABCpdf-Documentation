# FontSubstitution Property

&nbsp;

## Notes

This property specifies when fonts are substituted in export operations. Only the DOCX and HTML exporters currently support this property. It is ignored by other exporters, for example, the XPS exporter.

The FontSubstitutionType enumeration may take the following values:

Automatic - selects a sensible default value based on the exporter. Always - always substitute fonts with those installed on the machine. Missing - only substitute fonts which are missing or could not be converted to open type.

