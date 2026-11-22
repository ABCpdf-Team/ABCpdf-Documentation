# Field Class

Represents a field in a document.

The PDF specification makes a distinction between a field (in terms of a named value) and the visible appearance of the field on the document.

So not every field has a visible appearance. Those that do can be located using the [Page](2-properties/page.md) and [Rect](2-properties/rect.md) properties. The value of the field can be modified using the [Value](2-properties/value.md) property.

Fields exist within a hierarchy. Fields have children and their children can have children in turn. You can drill down through the hierarchy using the [Kids](2-properties/kids.md) property.

Alternatively - given a fully qualified name - you can use the [XForm](../../5-abcpdf/xform/index.md) level methods to obtain references directly.

Note that the Field object is an abstraction of the underlying objects defined in the document. As such the Object ID may refer to an Annotation Widget or it may refer to a Field or it may refer to a hybrid Widget Field as defined in the PDF specification.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       WebSupergoo.ABCpdf14.Objects.Field`

`Implements: IEquatable<Field>`

## Methods

| Method | Description |
| --- | --- |
| [Focus](1-methods/focus.md) | Prepare document for drawing at the field location. |
| [GetAnnotations](1-methods/getannotations.md) | Gets all the Annotations referenced by this field or its children. |
| [GetKids](1-methods/getkids.md) | Gets a set of Fields that are descendents of this one. |
| [GetExportValues](1-methods/getexportvalues.md) | Gets the export values for this field. |
| [SetFont](1-methods/setfont.md) | Sets the font and font size to be used for text. |
| [Stamp](1-methods/stamp.md) | Stamp this field into the document. |
| [UpdateAppearance](1-methods/updateappearance.md) | Update the appearance of all the Annotations associated with this field. |
|  | [inherited methods...](../1-indirectobject/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [DefaultAppearance](2-properties/defaultappearance.md) | The default appearance (DA) used for the text. |
| [FieldType](2-properties/fieldtype.md) | The field type. |
| [Flags](2-properties/flags.md) | The Field Flags (Ff) entry. |
| [Format](2-properties/format.md) | The field format. |
| [Kids](2-properties/kids.md) | All the immediate children of this field. |
| [MultiSelect](2-properties/multiselect.md) | Whether the field supports multiple selections. |
| [Name](2-properties/name.md) | The fully qualified field name. |
| [Options](2-properties/options.md) | The field options. |
| ⚠ [Page](2-properties/page.md) | The Page on which the field appears. |
| ⚠ [PageID](2-properties/pageid.md) | The ID of the page on which the field appears. |
| [Parent](2-properties/parent.md) | The parent of this field. |
| [PartialName](2-properties/partialname.md) | The partial field name. |
| ⚠ [Rect](2-properties/rect.md) | The location and size of the field. |
| [TextAlignment](2-properties/textalignment.md) | The alignment for the text. |
| [TextColor](2-properties/textcolor.md) | The color used for the text. |
| [TextFont](2-properties/textfont.md) | The font used for the text. |
| [TextSize](2-properties/textsize.md) | The font size used for the text. |
| [Value](2-properties/value.md) | The field value. |
|  | [inherited properties...](../1-indirectobject/index.md) |
