# StructParent Constructor

## Syntax

[C#] StructParent(IndirectObject owner, IndirectObject container)

## Params

## Notes

Construct a StructParent given an owner and a container. Often the two are the same.

For example a Page or a Form XObject have the same Owner and Container. However an Annotation may have multiple appearance streams so you need to specify the Owner (the Annotation) and the Container (the appearance stream) separately.

## Example

None.

