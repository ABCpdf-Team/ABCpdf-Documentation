# EntryState Property

## Notes

Represents the "State" entry of the text annotation object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF string object.

The PDF specification states that this item assumes a value of ""Unmarked" if StateModel is "Marked"; "None" if StateModel is "Review"" if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 172, page 394.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 175, page 478.

The state is a text string recording the current review or marking state. Valid values depend on the StateModel: for Marked they are Marked and Unmarked; for Review they include Accepted, Rejected, Cancelled, Completed, and None.
