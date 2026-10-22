# EntryUsage Property

## Notes

Represents the "Usage" entry of the optional content group dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an OptionalContentUsageElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 98, page 222.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 96, page 274.

The Usage dictionary holds sub-dictionaries that describe the real-world conditions under which this group should be on or off, such as a zoom level, a printing condition, a language, or a user role.

Conforming readers and processors that support automatic state setting consult these entries in response to specific events, setting group states to reflect the current context without user interaction.
