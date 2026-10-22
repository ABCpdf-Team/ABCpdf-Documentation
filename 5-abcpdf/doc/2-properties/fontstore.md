# FontStore Property

## Notes

A private font store provides a flexible alternative to the system font store, isolating fonts so that only specific Doc objects can access them.

When fonts are required for adding or embedding in a document, the system font store is searched. In addition, if one is assigned, the private font store will be searched too.

Font stores successively assigned to this property make contact with one another. See XFont.Store for a description of what happens when private font stores make contact.

## Example

None.

