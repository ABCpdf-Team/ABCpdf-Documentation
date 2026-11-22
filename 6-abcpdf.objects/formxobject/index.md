# FormXObject Class

A Form XObject is a self contained stream of graphics operations which can be referenced as a group.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)  
`          WebSupergoo.ABCpdf14.Objects.FormXObject`

`Implements: IEquatable<FormXObject>`

## Methods

| Method | Description |
| --- | --- |
| [FormXObject](1-methods/formxobject.md) | FormXObject constructor. |
| [AddResource](1-methods/addresource.md) | Add a particular type of resource. |
| [GetResourceMap](1-methods/getresourcemap.md) | Get a dictionary mapping the names of a particular type of resource to Atoms. |
| [GetNextMcid](1-methods/getnextmcid.md) | Gets the next available MCID for use in this Form XObject. |
|  | [inherited methods...](../streamobject/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [BBox](2-properties/bbox.md) | The rect defining the bounding box of the graphic. |
| [Matrix](2-properties/matrix.md) | The transformation matrix used for mapping the Form XObject space into user space. |
|  | [inherited properties...](../streamobject/index.md) |
