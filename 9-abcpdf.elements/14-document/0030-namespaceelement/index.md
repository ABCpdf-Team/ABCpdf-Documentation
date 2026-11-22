# NamespaceElement Class

This class represents the namespace dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 356, page 725.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because AttributeObjectElement.EntryNS, NamespaceElement.EntryRoleMapNS and StructureElementElement.EntryNS require it to be so.

A namespace element defines a namespace used in a tagged PDF document structure tree. Namespaces allow structure element types from different specifications to coexist without name collisions.

The NS entry holds the namespace URI as a string. This URI uniquely identifies the namespace and distinguishes its element types from those of other namespaces, including the standard PDF namespace.

The Schema entry references an associated file carrying a schema definition for the namespace, describing the permitted element types, attributes, and relationships.

The RoleMapNS entry provides a mapping from element type names in this namespace to standard PDF structure type names, allowing readers that do not support the namespace to apply standard semantics.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.NamespaceElement`

## Methods

| Method | Description |
| --- | --- |
| [NamespaceElement](1-methods/01-namespaceelement.md) | Create a new NamespaceElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the namespace dictionary object. |
| [EntryNS](2-properties/02-entryns.md) | Represents the "NS" entry of the namespace dictionary object. |
| [EntrySchema](2-properties/03-entryschema.md) | Represents the "Schema" entry of the namespace dictionary object. |
| [EntryRoleMapNS](2-properties/04-entryrolemapns.md) | Represents the "RoleMapNS" entry of the namespace dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
