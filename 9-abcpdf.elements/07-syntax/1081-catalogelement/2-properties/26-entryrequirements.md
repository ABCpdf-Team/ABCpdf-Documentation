# EntryRequirements Property

## Notes

Represents the "Requirements" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains an array which contains RequirementElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 75.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 100.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.

The Requirements entry holds an array of requirement dictionaries listing features the document requires a reader to support. If a reader cannot satisfy a requirement, it should warn the user that the document may not be processed correctly.
