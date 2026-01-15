# AddResource Function

Add a particular type of resource to the form

## Syntax

```csharp
string AddResource(IndirectObject resource, string type, string name)
```

## Params

| Name | Description |
| --- | --- |
| resource | The resource to be added. |
| type | The type of resource. |
| name | The format of the name that should be used. |

## Notes

Add a particular type of resource to the form.

Forms may contain default resources usable by any of the fields and annotations in the form. The most common resource types are "Font", "XObject" and "ColorSpace". For further details see the PDF Specification.

This method allows you to add new resources to the form. You may supply your own name for the resource but if  the name is already in use, it may need to be modified. For this reason the function returns the value which was actually used for the addition.

