# Type4FunctionElement Class

This class represents the type 4 function dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 97.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=105)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 4 function is a PostScript calculator function encoded as a stream. The stream contains a sequence of PostScript operators that compute output values from input values using stack-based arithmetic.

The function operates on a stack of real numbers. Input values are pushed onto the stack before execution begins. After execution, the output values remain on the stack and are consumed as the function result.

Type 4 functions support a subset of PostScript operators covering arithmetic, relational, logical, and stack manipulation. The subset is defined precisely in the specification and does not include operators that access external state.

The domain and range entries bound the valid input and output values. Input values are clipped to the domain before the function executes, and output values are clipped to the range after execution.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FunctionElement`](../1101-functionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type4FunctionElement`

## Methods

| Method | Description |
| --- | --- |
| [Type4FunctionElement](1-methods/01-type4functionelement.md) | Create a new Type4FunctionElement. |
|  | [inherited methods...](../1101-functionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
|  | [inherited properties...](../1101-functionelement/index.md) |
