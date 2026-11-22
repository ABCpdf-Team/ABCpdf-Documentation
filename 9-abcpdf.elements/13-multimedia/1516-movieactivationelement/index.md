# MovieActivationElement Class

This class represents the movie activation dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 635.](https://www.iso.org/standard/63534.html)

A movie activation dictionary carries parameters for the legacy movie action, which plays a QuickTime or AVI movie associated with a movie annotation. These parameters control the starting time, duration, playback rate, and display of the movie.

The Start and Duration entries give the starting time and duration for playback, expressed as time values. Rate controls the playback speed relative to normal. Volume controls the audio volume.

ShowControls, when true, causes the player to display its user interface controls. Mode controls what happens at the end of playback. Synchronous, when true, causes the reader to wait for the movie to finish before continuing.

FWScale and FWPosition control the size and position of the floating playback window relative to the annotation rectangle.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MovieActivationElement`

## Methods

| Method | Description |
| --- | --- |
| [MovieActivationElement](1-methods/01-movieactivationelement.md) | Create a new MovieActivationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryStart](2-properties/01-entrystart.md) | Represents the "Start" entry of the movie activation dictionary object. |
| [EntryDuration](2-properties/02-entryduration.md) | Represents the "Duration" entry of the movie activation dictionary object. |
| [EntryRate](2-properties/03-entryrate.md) | Represents the "Rate" entry of the movie activation dictionary object. |
| [EntryVolume](2-properties/04-entryvolume.md) | Represents the "Volume" entry of the movie activation dictionary object. |
| [EntryShowControls](2-properties/05-entryshowcontrols.md) | Represents the "ShowControls" entry of the movie activation dictionary object. |
| [EntryMode](2-properties/06-entrymode.md) | Represents the "Mode" entry of the movie activation dictionary object. |
| [EntrySynchronous](2-properties/07-entrysynchronous.md) | Represents the "Synchronous" entry of the movie activation dictionary object. |
| [EntryFWScale](2-properties/08-entryfwscale.md) | Represents the "FWScale" entry of the movie activation dictionary object. |
| [EntryFWPosition](2-properties/09-entryfwposition.md) | Represents the "FWPosition" entry of the movie activation dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
