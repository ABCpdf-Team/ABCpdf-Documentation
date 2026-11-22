# MakeFieldNamesUnique Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether field names should be changed to make them unique. |

## Notes

Input document forms can contain fields with the same name, or no name at all.

If the names of two fields in a PDF are the same, then the fields take the same value.

So if multiple form fields with the same name are added to a PDF, these fields will all appear to contain the same content. This is true even if the form fields in the original document contained different content.

Setting this property will result in duplicate fields being renamed to allow the content to be different. Field without names will be added a placeholder name so they can be displayed properly in PDF.
