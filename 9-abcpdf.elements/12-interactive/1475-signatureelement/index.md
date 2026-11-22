# SignatureElement Class

This class represents the signature dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because PermissionsElement.EntryDocMDP requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SignatureElement`

A signature dictionary holds all data associated with a digital signature applied to a PDF. The Filter entry names the security handler. SubFilter names the encoding convention. Both are required so that a verifier can locate the correct processing module.

The Contents entry holds the signature bytes. The ByteRange entry identifies the byte ranges that were hashed. The Reference array holds signature reference dictionaries describing the transform applied before hashing.

The M entry records the signing time. Name, Location, Reason, and ContactInfo provide additional metadata. Prop_Build, Prop_AuthTime, and Prop_AuthType carry application and authentication metadata.

## Methods

| Method | Description |
| --- | --- |
| [SignatureElement](1-methods/01-signatureelement.md) | Create a new SignatureElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the signature dictionary object. |
| [EntryFilter](2-properties/02-entryfilter.md) | Represents the "Filter" entry of the signature dictionary object. |
| [EntrySubFilter](2-properties/03-entrysubfilter.md) | Represents the "SubFilter" entry of the signature dictionary object. |
| [EntryContents](2-properties/04-entrycontents.md) | Represents the "Contents" entry of the signature dictionary object. |
| [EntryCert](2-properties/05-entrycert.md) | Represents the "Cert" entry of the signature dictionary object. |
| [EntryByteRange](2-properties/06-entrybyterange.md) | Represents the "ByteRange" entry of the signature dictionary object. |
| [EntryReference](2-properties/07-entryreference.md) | Represents the "Reference" entry of the signature dictionary object. |
| [EntryChanges](2-properties/08-entrychanges.md) | Represents the "Changes" entry of the signature dictionary object. |
| [EntryName](2-properties/09-entryname.md) | Represents the "Name" entry of the signature dictionary object. |
| [EntryM](2-properties/10-entrym.md) | Represents the "M" entry of the signature dictionary object. |
| [EntryLocation](2-properties/11-entrylocation.md) | Represents the "Location" entry of the signature dictionary object. |
| [EntryReason](2-properties/12-entryreason.md) | Represents the "Reason" entry of the signature dictionary object. |
| [EntryContactInfo](2-properties/13-entrycontactinfo.md) | Represents the "ContactInfo" entry of the signature dictionary object. |
| [EntryR](2-properties/14-entryr.md) | Represents the "R" entry of the signature dictionary object. |
| [EntryV](2-properties/15-entryv.md) | Represents the "V" entry of the signature dictionary object. |
| [EntryProp_Build](2-properties/16-entryprop_build.md) | Represents the "Prop_Build" entry of the signature dictionary object. |
| [EntryProp_AuthTime](2-properties/17-entryprop_authtime.md) | Represents the "Prop_AuthTime" entry of the signature dictionary object. |
| [EntryProp_AuthType](2-properties/18-entryprop_authtype.md) | Represents the "Prop_AuthType" entry of the signature dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
