# Owners Property

## Notes

Each content stream has an owner - either a Page or Form XObject.

The first owner is specified by you in the "owner" parameter when you call the Process function.

If you set the DoFormXObjects to be true then subsidiary Form XObjects will be called.

For each call a new owner is pushed onto the stack and then popped off after the Form XObject is finished.
