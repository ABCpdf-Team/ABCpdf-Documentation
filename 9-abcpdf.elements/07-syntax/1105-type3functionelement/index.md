# Type3FunctionElement Class

This class represents the type 3 function dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 41, page 97.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=105)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 41, page 127.](https://www.iso.org/standard/63534.html)

A Type 3 function, also called a stitching function, combines multiple sub-functions into a single piecewise function. The input domain is divided into subdomains and each subdomain is handled by one of the sub-functions.

The Functions entry holds an array of the sub-functions. The Bounds entry holds an array of boundary values that divide the domain into subdomains. There is one fewer boundary value than there are sub-functions.

The Encode array maps each subdomain's input range to the domain of the corresponding sub-function. This allows sub-functions defined over \[0, 1\] to be used without modification even when the stitching domain spans other ranges.

Type 3 functions are commonly used in shadings where a color gradient changes character at one or more points in the gradient, requiring different mathematical descriptions for different portions.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FunctionElement`](../1101-functionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type3FunctionElement`

## Methods

| Method | Description |
| --- | --- |
| [Type3FunctionElement](1-methods/01-type3functionelement.md) | Create a new Type3FunctionElement. |
|  | [inherited methods...](../1101-functionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFunctions](2-properties/01-entryfunctions.md) | Represents the "Functions" entry of the type 3 function dictionary object. |
| [EntryBounds](2-properties/02-entrybounds.md) | Represents the "Bounds" entry of the type 3 function dictionary object. |
| [EntryEncode](2-properties/03-entryencode.md) | Represents the "Encode" entry of the type 3 function dictionary object. |
|  | [inherited properties...](../1101-functionelement/index.md) |
