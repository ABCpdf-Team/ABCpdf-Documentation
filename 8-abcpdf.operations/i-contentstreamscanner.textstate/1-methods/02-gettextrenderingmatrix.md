# GetTextRenderingMatrix Function

Get the current Text Rendering Matrix (Trm).

## Syntax

*C#*

[`XTransform`](../../../5-abcpdf/xtransform/index.md)` GetTextRenderingMatrix(`[`GraphicsState`](../../i-contentstreamscanner.graphicsstate/index.md)` state)`

## Params

| Name | Description |
| :---: | --- |
| state | The current graphics state. |
| return | The Text Rendering Matrix. |

## Notes

Get the current Text Rendering Matrix (Trm).

This transformation matrix encompasses all text state parameters and can be used to place text for output.

The Trm is part of the PDF Specification and is defined precisely in the documentation for this.
