# Owners Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Stack<IndirectObject>` | Empty Stack | No | A stack of content stream owners. |

## Notes

Each content stream has an owner - either a Page or Form XObject.

The first owner is specified by you in the "owner" parameter when you call the [Process](../1-methods/02-process.md) function.

If you set the [DoFormXObjects](03-doformxobjects.md) to be true then subsidiary Form [XObjects](../../../6-abcpdf.objects/formxobject/index.md) will be called.

For each call a new owner is pushed onto the stack and then popped off after the Form XObject is finished.

The stack is the call chain for the current content stream. It runs from the Page or Form XObject whose content is being processed, out to the owner passed to Process - usually the Page. So to look up a resource used in the current content stream you can pass it straight to [Resorcerer.GetResource](../../j-resorcerer/1-methods/03-getresource.md). This finds resources which a Form XObject takes from the content stream which invokes it, as well as those it holds itself.
