# RemapTypes Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<string, int>` | n/a | Yes | A dictionary used to redirect all objects of a specific type to a specific object ID. |

## Notes

A dictionary used to redirect all objects of a specific type to a specific object ID.

For example a stamp annotation is an object that describes a rubber stamp image that floats over a page. This object will contain links to other objects which will describe features like the appearance of the stamp. However it also contains a link to the page on which it is located.

Suppose you want to copy this annotation to another document. When you call [AddFamily](../1-methods/3-addfamily.md) with this annotation you want to include related items like the annotation appearance but you do not want to include the page on which it is located. In fact you actually want links to this page in the source document to be redirected to a different page in the final destination document.

By specifying a mapping from the "Page" object type to the ID of a page in the final destination you both stop looking for linked objects at the point at which a page is discovered and also allow references to the source page to be linked to the destination page at the point that [CopyTo](../1-methods/2-copyto.md) is called.

To be precise, each time an IndirectObject is encountered it is checked for a "Type" entry. If this entry matches an item in the RemapTypes dictionary then the object is not added and no items to which it referrers are added. Instead an item is added to the [RemapIDs](remapids.md) property specifying a mapping between the ID of the object in question and the ID specified in the RemapTypes entry.
