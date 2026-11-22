# CuePointElement Class

This class represents the cuepoint dictionary. This is definitively detailed in:.

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.51e, page 92.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=92)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CuePointElement`

A cue point dictionary marks a specific moment in a time-based media stream. The Time entry gives the position in seconds. The A (action) entry is executed when playback reaches the cue point. Subtype classifies the cue point (Event or Chapter). Name labels it for targeting by name.

## Methods

| Method | Description |
| --- | --- |
| [CuePointElement](1-methods/01-cuepointelement.md) | Create a new CuePointElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the cuepoint dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the cuepoint dictionary object. |
| [EntryName](2-properties/03-entryname.md) | Represents the "Name" entry of the cuepoint dictionary object. |
| [EntryTime](2-properties/04-entrytime.md) | Represents the "Time" entry of the cuepoint dictionary object. |
| [EntryA](2-properties/05-entrya.md) | Represents the "A" entry of the cuepoint dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
