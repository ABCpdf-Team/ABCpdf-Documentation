# GraphicsStateParameterElement Class

This class represents the graphics state parameter dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=136)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The graphics state parameter dictionary lets a content stream set multiple graphics state parameters in a single operation. Its entries correspond directly to parameters that can also be set by specific graphics state operators, but grouping them in a dictionary allows efficient reuse.

A graphics state parameter dictionary is stored as a named resource under the ExtGState entry of a resource dictionary. A content stream activates its parameters by invoking the gs operator with the resource name.

The dictionary may contain any subset of the defined entries. Parameters absent from the dictionary are not changed; the current graphics state retains its existing values for those parameters.

Line width, cap style, join style, and miter limit control the geometry of stroked paths. These parameters affect every subsequent stroke operation until changed again.

The dash pattern entry defines a phase and array that together describe an on-off repeating pattern for dashed lines. A solid line is produced when the array is empty.

Rendering intent, overprint mode, and overprint flags govern how colors interact at the compositing stage, particularly for CMYK output. The distinction between OP and op lets separate overprint settings apply to filling and stroking operations.

Transfer functions (TR and TR2), black generation (BG and BG2), and undercolor removal (UCR and UCR2) control the mapping from color values to device colorants during rendering. The '2' variants were introduced to support PDF 1.3 and later color processing.

The halftone entry (HT) specifies or references a halftone dictionary or stream that controls how continuous-tone values are screened for output on halftone devices.

Transparency-related entries - blend mode (BM), soft mask (SMask), alpha constants (CA and ca), and the alpha-is-shape flag (AIS) - control how objects composite with the current transparency group.

The UseBlackPtComp entry, added in PDF 2.0, controls whether black point compensation is applied during color conversions, which can affect shadow detail and tonal range on output.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.GraphicsStateParameterElement`

## Methods

| Method | Description |
| --- | --- |
| [GraphicsStateParameterElement](1-methods/01-graphicsstateparameterelement.md) | Create a new GraphicsStateParameterElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the graphics state parameter dictionary object. |
| [EntryLW](2-properties/02-entrylw.md) | Represents the "LW" entry of the graphics state parameter dictionary object. |
| [EntryLC](2-properties/03-entrylc.md) | Represents the "LC" entry of the graphics state parameter dictionary object. |
| [EntryLJ](2-properties/04-entrylj.md) | Represents the "LJ" entry of the graphics state parameter dictionary object. |
| [EntryML](2-properties/05-entryml.md) | Represents the "ML" entry of the graphics state parameter dictionary object. |
| [EntryD](2-properties/06-entryd.md) | Represents the "D" entry of the graphics state parameter dictionary object. |
| [EntryRI](2-properties/07-entryri.md) | Represents the "RI" entry of the graphics state parameter dictionary object. |
| [EntryOP](2-properties/08-entryop.md) | Represents the "OP" entry of the graphics state parameter dictionary object. |
| [Entry_op](2-properties/09-entry_op.md) | Represents the "op" entry of the graphics state parameter dictionary object. |
| [EntryOPM](2-properties/10-entryopm.md) | Represents the "OPM" entry of the graphics state parameter dictionary object. |
| [EntryFont](2-properties/11-entryfont.md) | Represents the "Font" entry of the graphics state parameter dictionary object. |
| [EntryBG](2-properties/12-entrybg.md) | Represents the "BG" entry of the graphics state parameter dictionary object. |
| [EntryBG2](2-properties/13-entrybg2.md) | Represents the "BG2" entry of the graphics state parameter dictionary object. |
| [EntryUCR](2-properties/14-entryucr.md) | Represents the "UCR" entry of the graphics state parameter dictionary object. |
| [EntryUCR2](2-properties/15-entryucr2.md) | Represents the "UCR2" entry of the graphics state parameter dictionary object. |
| [EntryTR](2-properties/16-entrytr.md) | Represents the "TR" entry of the graphics state parameter dictionary object. |
| [EntryTR2](2-properties/17-entrytr2.md) | Represents the "TR2" entry of the graphics state parameter dictionary object. |
| [EntryHT](2-properties/18-entryht.md) | Represents the "HT" entry of the graphics state parameter dictionary object. |
| [EntryFL](2-properties/19-entryfl.md) | Represents the "FL" entry of the graphics state parameter dictionary object. |
| [EntrySM](2-properties/20-entrysm.md) | Represents the "SM" entry of the graphics state parameter dictionary object. |
| [EntrySA](2-properties/21-entrysa.md) | Represents the "SA" entry of the graphics state parameter dictionary object. |
| [EntryBM](2-properties/22-entrybm.md) | Represents the "BM" entry of the graphics state parameter dictionary object. |
| [EntrySMask](2-properties/23-entrysmask.md) | Represents the "SMask" entry of the graphics state parameter dictionary object. |
| [EntryCA](2-properties/24-entryca.md) | Represents the "CA" entry of the graphics state parameter dictionary object. |
| [Entry_ca](2-properties/25-entry_ca.md) | Represents the "ca" entry of the graphics state parameter dictionary object. |
| [EntryAIS](2-properties/26-entryais.md) | Represents the "AIS" entry of the graphics state parameter dictionary object. |
| [EntryTK](2-properties/27-entrytk.md) | Represents the "TK" entry of the graphics state parameter dictionary object. |
| [EntryUseBlackPtComp](2-properties/28-entryuseblackptcomp.md) | Represents the "UseBlackPtComp" entry of the graphics state parameter dictionary object. |
| [EntryHTO](2-properties/29-entryhto.md) | Represents the "HTO" entry of the graphics state parameter dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
