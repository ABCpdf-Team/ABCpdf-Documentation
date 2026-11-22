# OutputProfilesElement Class

This class represents the destoutputprofileref dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 402, page 817.](https://www.iso.org/standard/63534.html)

The output profiles element carries an ICC color profile as a stream, describing the intended output color space for a document or page. It appears in the OutputIntents array when the output condition is defined by an embedded profile.

The profile stream conforms to the ICC specification. Its color space signature determines the number of channels and the type of output device the profile describes.

Descriptive entries accompany the stream to identify the profile: its name, ICC version, input color space, a checksum for integrity verification, a colorant table, and URLs for external retrieval.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OutputProfilesElement`

## Methods

| Method | Description |
| --- | --- |
| [OutputProfilesElement](1-methods/01-outputprofileselement.md) | Create a new OutputProfilesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryCheckSum](2-properties/01-entrychecksum.md) | Represents the "CheckSum" entry of the destoutputprofileref dictionary object. |
| [EntryColorantTable](2-properties/02-entrycoloranttable.md) | Represents the "ColorantTable" entry of the destoutputprofileref dictionary object. |
| [EntryICCVersion](2-properties/03-entryiccversion.md) | Represents the "ICCVersion" entry of the destoutputprofileref dictionary object. |
| [EntryProfileCS](2-properties/04-entryprofilecs.md) | Represents the "ProfileCS" entry of the destoutputprofileref dictionary object. |
| [EntryProfileName](2-properties/05-entryprofilename.md) | Represents the "ProfileName" entry of the destoutputprofileref dictionary object. |
| [EntryURLs](2-properties/06-entryurls.md) | Represents the "URLs" entry of the destoutputprofileref dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
