# Owners Property

## Notes

Each content stream has an owner - either a Page or Form XObject.

The first owner is specified by you in the "owner" parameter when you call the Process function.

If you set the DoFormXObjects to be true then subsidiary Form XObjects will be called.

For each call a new owner is pushed onto the stack and then popped off after the Form XObject is finished.

The stack is the call chain for the current content stream. It runs from the Page or Form XObject whose content is being processed, out to the owner passed to Process - usually the Page. So to look up a resource used in the current content stream you can pass it straight to Resorcerer.GetResource. This finds resources which a Form XObject takes from the content stream which invokes it, as well as those it holds itself.
