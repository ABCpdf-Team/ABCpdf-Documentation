# XForm Class

Represents the form and fields associated with this document.

The PDF specification makes a distinction between a field (in terms of a named value) and the visible appearance of the field on the document.

In general one field will have one visible appearance on the document. However it is possible for a field to have multiple or indeed no appearances on the document.

For example a Radio Button group encapsulates one value and is represented by one field. However each radio button has a separate appearance on the document. So one Radio Button field is likely to have many appearances.

For this reason fields exist within a hierarchy. Each field may or may not have a visible appearance. Each field may or may not have children. These children may be fields themselves and again may have their own children.

Fields are generally referenced by fully qualified name. A full name describes a path down through the field hierarchy - using periods as delimiters - to a specific field object. For example the name 'person.address.city' would reference a field with a partial field name called 'city' which has a parent called 'address' which has a parent at the top level called 'person'. You can resolve a fully qualified name using the [Item](2-properties/item.md) property.

Once a field has been obtained you can query or change its values. If you wish to convert the fields into a permanent part of the document you can use the [Stamp](1-methods/stamp.md) method to permanently emboss them.

```
System.Object
    WebSupergoo.ABCpdf14.XForm
```

## Methods

| Method | Description |
| --- | --- |
| [AddComboBoxField](1-methods/addcomboboxfield.md) | Add combo box form field. |
| [AddListBoxField](1-methods/addlistboxfield.md) | Add list box form field. |
| [AddGroupField](1-methods/addgroupfield.md) | Add group field. |
| [AddTextField](1-methods/addtextfield.md) | Add text field. |
| [AddButton](1-methods/addbutton.md) | Add button field. |
| [AddCheckbox](1-methods/addcheckbox.md) | Add check box form field. |
| [AddRadioButtonGroup](1-methods/addradiobuttongroup.md) | Add radio button group. |
| [AddResource](1-methods/addresource.md) | Add a particular type of resource to the form. |
| [AddSignature](1-methods/addsignature.md) | Add unsigned signature field. |
| [AddDocTimestamp](1-methods/adddoctimestamp.md) | Adds a Signature field compatible with a document timestamp. |
| [Create](1-methods/create.md) | Create an AcroForm if one does not already exist. |
| [GetFieldNames](1-methods/getfieldnames.md) | Gets the full names of all the fields in the document. |
| [MakeFieldIntoGroup](1-methods/makefieldintogroup.md) | Make duplicate fields into synchronized groups. |
| [MakeFieldsUnique](1-methods/makefieldsunique.md) | Makes shared XForm fields unique. |
| [Remove](1-methods/remove.md) | Remove a field from the form. |
| [RunJS](1-methods/runjs.md) | Run JavaScript code. |
| [Stamp](1-methods/stamp.md) | Stamp all fields into the document. |

## Properties

| Property | Description |
| --- | --- |
| [DateTimeFormat](2-properties/datetimeformat.md) | The format provider for formatting dates and times. |
| [Fields](2-properties/fields.md) | All top level fields in the form. |
| [FormatFields](2-properties/formatfields.md) | Whether values should be formatted before insertion into fields. |
| [GenerateAppearances](2-properties/generateappearances.md) | Whether field appearances should be pre-generated. |
| [Item](2-properties/item.md) | Gets or sets a particular field referenced by full name. |
| [NeedAppearances](2-properties/needappearances.md) | Whether the viewer should automatically regenerate field appearances. |
| [UseFieldScript](2-properties/usefieldscript.md) | Whether the viewer should run JavaScript field calculations. |
