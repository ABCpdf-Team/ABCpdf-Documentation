# ActionElement Class

This class represents the action dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 193, page 414.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=422)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 196, page 502.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ActionElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.DocumentPartGoToActionElement`](../0023-documentpartgotoactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.EmbeddedGoToActionElement`](../1428-embeddedgotoactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.GoTo3DViewActionElement`](../1437-goto3dviewactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.GoToActionElement`](../1426-gotoactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.HideActionElement`](../1434-hideactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ImportDataActionElement`](../1464-importdataactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.JavaScriptActionElement`](../1438-javascriptactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.LaunchActionElement`](../1430-launchactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MovieActionElement`](../1433-movieactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.NamedActionElement`](../1435-namedactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.RemoteGoToActionElement`](../1427-remotegotoactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.RenditionActionElement`](../1436-renditionactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ResetFormActionElement`](../1463-resetformactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.RichMediaExecuteActionElement`](../2040-richmediaexecuteactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.SetOcgStateActionElement`](../1435-setocgstateactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.SoundActionElement`](../1433-soundactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.SubmitFormActionElement`](../1459-submitformactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.ThreadActionElement`](../1431-threadactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.TransitionActionElement`](../1437-transitionactionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.UriActionElement`](../1432-uriactionelement/index.md)

An action dictionary is the base type for all interactive actions in a PDF. It provides the S entry naming the action type and the Next entry for action chaining.

The S entry determines which additional entries are valid. The Next entry allows multiple actions to be chained: a single action dictionary or an array, executed in sequence after the current action completes.

## Methods

| Method | Description |
| --- | --- |
| [ActionElement](1-methods/01-actionelement.md) | Create a new ActionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the action dictionary object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the action dictionary object. |
| [EntryNext](2-properties/03-entrynext.md) | Represents the "Next" entry of the action dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
