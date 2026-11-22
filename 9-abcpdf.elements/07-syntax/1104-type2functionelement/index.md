# Type2FunctionElement Class

This class represents the type 2 function dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 40, page 96.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=104)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 40, page 126.](https://www.iso.org/standard/63534.html)

A Type 2 function defines an exponential interpolation between two values. It computes the output as C0 + x^N \* (C1 - C0), where x is the input value and N is the interpolation exponent.

C0 and C1 are arrays giving the output values at input 0 and input 1 respectively. Their length equals the number of output components. When absent, C0 defaults to \[0\] and C1 defaults to \[1\].

The N entry is the interpolation exponent. For N equal to 1, the function is a linear interpolation. For N equal to 2 or greater, the interpolation follows a power curve that rises more slowly near 0 and more steeply near 1. Fractional values of N are permitted.

Type 2 functions are commonly used as tint transforms in Separation and DeviceN color spaces and as the color function in axial and radial shadings.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FunctionElement`](../1101-functionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type2FunctionElement`

## Methods

| Method | Description |
| --- | --- |
| [Type2FunctionElement](1-methods/01-type2functionelement.md) | Create a new Type2FunctionElement. |
|  | [inherited methods...](../1101-functionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryC0](2-properties/01-entryc0.md) | Represents the "C0" entry of the type 2 function dictionary object. |
| [EntryC1](2-properties/02-entryc1.md) | Represents the "C1" entry of the type 2 function dictionary object. |
| [EntryN](2-properties/03-entryn.md) | Represents the "N" entry of the type 2 function dictionary object. |
|  | [inherited properties...](../1101-functionelement/index.md) |
