# What’s New?

## Linux Support
ABCpdf now runs on Linux as well as Windows. Most code runs the same across platforms; differences relate to Windows-specific features like XPS and WPF. See ABCpdf on Linux.

## ABCChrome
HTML engines upgraded; support for ABCChrome 123 and 117. Better conformance, features, security, and substantially higher conversion speeds.

## ABCWebKit
FireShield runs ABCWebKit in a Windows Job Object for added control and diagnostics. Post-conversion statistics include bytes transferred/read/written, user/kernel time, peak memory.

## FireShield
Extended control over file and directory access, simplified path specification, and network lockdown by IP. Includes rewrite rules for file access redirection.

## Pentest
Regular third-party penetration testing feeds into new features and enhanced security.

## Images
JPEG 2000 export adds lower bit-depths, embedded ICC profiles, and resolution info. JPEG 2000 decode is now thread-safe. `XImage.GetInfo` returns format-specific info. New custom PNG/GIF/JPEG/BMP codecs. PNG import supports all bit depths and color spaces. BMP export supports alpha, embedded profiles, indexed color, compression options.

## Cloud Vision
`CloudVisionOperation` integrates Google Cloud Vision APIs for OCR and image tagging to aid accessibility.

## Rendering
Selective rendering via filters; ignore operators using `XRendering.OpsToIgnore`.

## Signatures
Enhanced `Signature` class: revocation policy control (LTV), signature length logic, flexible data types, certification options, verbose logs via `XSettings.Log`. Extract individual revisions using `ObjectSoup.RevisionEOFs`.

## Operations
Optimized `ImageOperation`; improved `ReduceSizeOperation`; new Accessibility operation.

## Contents & Streams
`Page.GetContentData`/`SetContentData` for content streams. `StreamObject.GetData`/`SetData` overrides. `ContentStreamOperation` enhancements for operator positions/offsets. New properties for annotations, layer-specific, and Form XObject operations.

## Examples
Examples simplified, especially AccessiblePDF using the new Accessibility operation.

## Other
New APIs and properties: `ArrayAtom.ItemsPerLine`, `ArrayAtom.ToString` specifiers, `ArrayAtom.IsContentStream`, `NumAtom(long)` constructor, `NumAtom.IsInt`, `ValidAsInt32/Int64`, `XSettings.SetConfigFile` (Linux-style config), `TextStyle.Pilcrows`, `FontObject.VetText`, and grayscale/CMYK colors for SVG import.