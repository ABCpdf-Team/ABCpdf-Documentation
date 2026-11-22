# NeedAppearances Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether the viewer should automatically regenerate field appearances. |

## Notes

This property determines if the NeedAppearances flag in the PDF is set when field values are changed.

The NeedAppearances flag signals to the viewing application that field appearances should be automatically generated rather than using the appearance embedded in the PDF.

If this property is true, every time you change the value of a field ABCpdf will ensure that a NeedsAppearances flag is available and that it is set to true. It only ever sets the flag to true, it will not set it to false. It only sets the flag when field values are changed, it will not set it if no field values are changed.

This means two things, firstly that if you want this to be false you need to set this property to false before changing any field values.

Secondly, that if you read a document in which this flag may already be set to true, to revert it back to false, you would need code of the following form to be called immediately after the read.

```csharp
var cat = doc.ObjectSoup.Catalog;
var form = cat.Resolve(Atom.GetItem(cat.Atom, "AcroForm"));
Atom.RemoveItem(form, "NeedAppearances");
```

> **PDF 2.0 Related Changes.** In PDF 2.0 the 'true' setting for this property has been deprecated.
>
> The logic is that documents should generate their own appearance streams rather than relying on the behavior of the viewer. There is truth in this, but also a problem - the generation of appearance streams is not defined in the specification - it inevitably varies between applications.
>
> So the reality is that, without this flag, users may see a document which looks subtly different from the one they expect. Currently we leave this default as true so that users see the documents as they expect. If you require strict adherence to PDF 2.0 then you may wish to set it to false.
>
> However since PDF 2.0 has deprecated this setting, the default value for this property is likely to change in the future. As such, if you are relying on a particular value you should set the property explicitly in your code.

## Example

Also see example code in: [ABCpdf eForm Fields Example](../../../4-examples/15-eform1.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [ABCpdf eForm Stamp Example](../../../4-examples/15-eform3.md).
