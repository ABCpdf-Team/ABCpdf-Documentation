# OptionalContentMembershipElement Class

This class represents the optional content membership dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 99, page 223.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=231)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 97, page 275.](https://www.iso.org/standard/63534.html)

An optional content membership dictionary (OCMD) combines the states of one or more optional content groups through a logical expression to determine whether associated content is visible.

The OCGs entry lists the groups whose states are evaluated. The list may contain individual OCG references or nested arrays for complex expressions.

The P entry defines the policy applied to the listed groups. Policies include AllOn (all groups must be on), AllOff (all must be off), AnyOn (at least one must be on), and AnyOff (at least one must be off).

The VE entry, added in PDF 2.0, provides a visibility expression tree. This allows arbitrary Boolean combinations of group states using AND, OR, and NOT operators, extending the simpler P-based policy.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OptionalContentMembershipElement`

## Methods

| Method | Description |
| --- | --- |
| [OptionalContentMembershipElement](1-methods/01-optionalcontentmembershipelement.md) | Create a new OptionalContentMembershipElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the optional content membership dictionary object. |
| [EntryOCGs](2-properties/02-entryocgs.md) | Represents the "OCGs" entry of the optional content membership dictionary object. |
| [EntryP](2-properties/03-entryp.md) | Represents the "P" entry of the optional content membership dictionary object. |
| [EntryVE](2-properties/04-entryve.md) | Represents the "VE" entry of the optional content membership dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
