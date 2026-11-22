# Element Function

Create a new [Element](../index.md).

## Syntax

*C#*

[`Element`](../index.md)`()`  
[`Element`](../index.md)`(`[`Atom`](../2-properties/03-atom.md)` atom, IndirectObject host)`  
[`Element`](../index.md)`(IndirectObject obj)`  
[`Element`](../index.md)`(`[`Element`](../index.md)` relation, CreationOptions options = CreationOptions.Default)`

⚠ `ArgumentException: Thrown if the atom is not of correct type for this type of `[`Element`](../index.md)`.`

## Params

| Name | Description |
| :---: | --- |
| atom | The [Atom](../2-properties/03-atom.md) to be assigned to this [Element](../index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the [Atom](../2-properties/03-atom.md). |
| obj | The IndirectObject to be assigned to this [Element](../index.md). |
| relation | An [Element](../index.md). This can be any [Element](../index.md) in the Soup but ideally should be one closely associated with this [Element](../index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../index.md) should be created using an IndirectObject rather than just an [Atom](../2-properties/03-atom.md). |

## Notes

Create a new [Element](../index.md).

The different constructors allow different ways of creating an [Element](../index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../index.md). For this you might use code of the following form "[CatalogElement](../../../07-syntax/1081-catalogelement/index.md) root = new [CatalogElement](../../../07-syntax/1081-catalogelement/index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../index.md). By empty we mean it has no contents - no [Atom](../2-properties/03-atom.md) within it. So before use an [Atom](../2-properties/03-atom.md) must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing [Atom](../2-properties/03-atom.md). It creates an [Element](../index.md) and then Assigns the [Atom](../2-properties/03-atom.md) to it. The result is a specialized [Element](../index.md) which can be used to examine or modify the contents of the [Atom](../2-properties/03-atom.md).

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../index.md).
- Indirect - Create [Element](../index.md) containing an IndirectObject.
- Direct - Create [Element](../index.md) containing an [Atom](../2-properties/03-atom.md).

## Example

This code snippet is taken from TaggedPDF.cs line 87 in the AccessiblePDF example project.

`List<`[`Element`](../index.md)`> items = new List<`[`Element`](../index.md)`>();`  
`FindAll(item, items);`  
`return items;`

This code snippet is taken from Annotations.cs line 464 in the Annotations example project.

`if (inKids.Count == 0)`  
`  throw new Exception("Cannot have a group field with no kids");`  
`int fieldID = Doc.AddObject("<< /Kids [] >>");`  
`FormField formField = new FormField(this, inName, fieldID, inKids);`  
`formField.FieldElement.EntryV = new `[`Element`](../index.md)`(new `[`StringAtom`](../2-properties/10-stringatom.md)`(inValue), formField.Host);`  
`return formField;`

This code snippet is taken from Annotations.cs line 480 in the Annotations example project.

`TextFieldAnnotation textField = new TextFieldAnnotation(this, inRect);`  
`FormField formField = new FormField(this, inName, textField);`  
`formField.FieldElement.EntryFT = "Tx";`  
`formField.FieldElement.EntryFf = (int)Field.FieldFlags.Multiline;`  
`formField.FieldElement.EntryQ = 1;`  
`if (inText != null)`  
`  formField.FieldElement.EntryV = new `[`Element`](../index.md)`(new `[`StringAtom`](../2-properties/10-stringatom.md)`(inText), formField.FieldElement.Host);`  
`return formField;`

This code snippet is taken from Annotations.cs line 514 in the Annotations example project.

`CheckBoxAnnotation checkBox = new CheckBoxAnnotation(this, inRect, inValue);`  
`FormField formField = new FormField(this, inName, checkBox);`  
`formField.FieldElement.EntryFT = "Btn";`  
`formField.FieldElement.EntryV = new `[`Element`](../index.md)`(new `[`NameAtom`](../2-properties/08-nameatom.md)`(inValue ? "Yes" : "Off"), formField.Host);`  
`return formField;`

This code snippet is taken from Annotations.cs line 529 in the Annotations example project.

`List<WidgetAnnotation> kids = new List<WidgetAnnotation>();`  
`for (int i = 0; i < inRects.Length; i++) {`  
`  RadioButtonAnnotation radioButton = new RadioButtonAnnotation(this, inRects[i], i.ToString(), i == inSelectedButton);`  
`  kids.Add(radioButton);`  
`}`  
`int fieldID = Doc.AddObject("<</FT /Btn /Ff 49152 /Kids [] /DA (/ZaDb 0 Tf 0 g)>>");`  
`FormField formField = new FormField(this, inName, fieldID, kids);`  
`formField.FieldElement.EntryV = new `[`Element`](../index.md)`(new `[`NameAtom`](../2-properties/08-nameatom.md)`(inSelectedButton.ToString()), formField.Host);`  
`return formField;`

This code snippet is taken from Annotations.cs line 1944 in the Annotations example project.

[`RichMediaParamsElement`](../../../12-interactive/2090-richmediaparamselement/index.md)` pars = RichMediaElement.EntryRichMediaSettings.EntryActivation.EntryConfiguration.EntryInstances[0].EntryParams;`  
`if (string.IsNullOrEmpty(value))`  
`  pars.EntryFlashVars = null;`  
`else if (value.Length <= 128)`  
`  pars.EntryFlashVars = new `[`Element`](../index.md)`(new `[`StringAtom`](../2-properties/10-stringatom.md)`(value), AnnotationElement.Object);`  
`else {`  
`  StreamObject so = new StreamObject(Form.Doc.ObjectSoup);`  
`  so.SetText(value);`  
`  so.CompressFlate();`  
`  pars.EntryFlashVars = new `[`Element`](../index.md)`(new RefAtom(so), AnnotationElement.Object);`  
`}`
