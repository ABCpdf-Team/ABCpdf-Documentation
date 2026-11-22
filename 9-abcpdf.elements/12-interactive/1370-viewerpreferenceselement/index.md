# ViewerPreferencesElement Class

This class represents the viewer preferences dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 362.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=370)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 435.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=28)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ViewerPreferencesElement`

A viewer preferences dictionary allows a PDF file to specify how a conforming viewer should present it when first opened. The settings cover window layout, user-interface chrome visibility, printing behaviour, and page navigation direction.

All entries are optional; any viewer is free to ignore entries it does not support. The dictionary supplements the open-action and page-mode settings in the document catalog, which control a different layer of display behaviour.

The print-related entries - duplex mode, page range, number of copies, and tray selection - are advisory. A viewer that does not expose direct printing access may ignore them, and a user can override them at print time.

The Enforce entry limits which viewer-preference entries a viewer must honour regardless of user override. In current practice only PrintScaling can be enforced, and only by viewers that explicitly support the enforcement mechanism.

The area and clip entries - ViewArea, ViewClip, PrintArea, and PrintClip - specify which bounding box defines the visible and printable region. Omitting them is equivalent to specifying CropBox, the most common choice.

## Methods

| Method | Description |
| --- | --- |
| [ViewerPreferencesElement](1-methods/01-viewerpreferenceselement.md) | Create a new ViewerPreferencesElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryHideToolbar](2-properties/01-entryhidetoolbar.md) | Represents the "HideToolbar" entry of the viewer preferences dictionary object. |
| [EntryHideMenubar](2-properties/02-entryhidemenubar.md) | Represents the "HideMenubar" entry of the viewer preferences dictionary object. |
| [EntryHideWindowUI](2-properties/03-entryhidewindowui.md) | Represents the "HideWindowUI" entry of the viewer preferences dictionary object. |
| [EntryFitWindow](2-properties/04-entryfitwindow.md) | Represents the "FitWindow" entry of the viewer preferences dictionary object. |
| [EntryCenterWindow](2-properties/05-entrycenterwindow.md) | Represents the "CenterWindow" entry of the viewer preferences dictionary object. |
| [EntryDisplayDocTitle](2-properties/06-entrydisplaydoctitle.md) | Represents the "DisplayDocTitle" entry of the viewer preferences dictionary object. |
| [EntryNonFullScreenPageMode](2-properties/07-entrynonfullscreenpagemode.md) | Represents the "NonFullScreenPageMode" entry of the viewer preferences dictionary object. |
| [EntryDirection](2-properties/08-entrydirection.md) | Represents the "Direction" entry of the viewer preferences dictionary object. |
| [EntryViewArea](2-properties/09-entryviewarea.md) | Represents the "ViewArea" entry of the viewer preferences dictionary object. |
| [EntryViewClip](2-properties/10-entryviewclip.md) | Represents the "ViewClip" entry of the viewer preferences dictionary object. |
| [EntryPrintArea](2-properties/11-entryprintarea.md) | Represents the "PrintArea" entry of the viewer preferences dictionary object. |
| [EntryPrintClip](2-properties/12-entryprintclip.md) | Represents the "PrintClip" entry of the viewer preferences dictionary object. |
| [EntryPrintScaling](2-properties/13-entryprintscaling.md) | Represents the "PrintScaling" entry of the viewer preferences dictionary object. |
| [EntryDuplex](2-properties/14-entryduplex.md) | Represents the "Duplex" entry of the viewer preferences dictionary object. |
| [EntryPickTrayByPDFSize](2-properties/15-entrypicktraybypdfsize.md) | Represents the "PickTrayByPDFSize" entry of the viewer preferences dictionary object. |
| [EntryPrintPageRange](2-properties/16-entryprintpagerange.md) | Represents the "PrintPageRange" entry of the viewer preferences dictionary object. |
| [EntryNumCopies](2-properties/17-entrynumcopies.md) | Represents the "NumCopies" entry of the viewer preferences dictionary object. |
| [EntryEnforce](2-properties/18-entryenforce.md) | Represents the "Enforce" entry of the viewer preferences dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
