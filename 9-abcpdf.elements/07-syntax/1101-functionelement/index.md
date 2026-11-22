# FunctionElement Class

This class represents the function dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 38, page 93.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=101)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 38, page 122.](https://www.iso.org/standard/63534.html)

PDF functions are objects that map one or more input values to one or more output values according to a mathematical definition. They are used in shadings, transfer functions, tint transforms, and other places where a mathematical mapping is needed.

The FunctionType entry selects the function algorithm: 0 for sampled (table lookup with interpolation), 2 for exponential interpolation, 3 for stitching (piecewise combination of other functions), and 4 for PostScript calculator.

The Domain entry defines the valid range of input values as an array of min/max pairs, one per input dimension. Input values are clipped to the domain before the function is evaluated.

The Range entry defines the valid range of output values. When present, output values are clipped to the range after evaluation. Range is required for Type 0 and Type 4 functions and optional for Types 2 and 3.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FunctionElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.Type0FunctionElement`](../1102-type0functionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type2FunctionElement`](../1104-type2functionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type3FunctionElement`](../1105-type3functionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Type4FunctionElement`](../0013-type4functionelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [FunctionElement](1-methods/01-functionelement.md) | Create a new FunctionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFunctionType](2-properties/01-entryfunctiontype.md) | Represents the "FunctionType" entry of the function dictionary object. |
| [EntryDomain](2-properties/02-entrydomain.md) | Represents the "Domain" entry of the function dictionary object. |
| [EntryRange](2-properties/03-entryrange.md) | Represents the "Range" entry of the function dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
