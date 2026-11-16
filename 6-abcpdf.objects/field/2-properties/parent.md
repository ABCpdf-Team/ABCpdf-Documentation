# Parent Property

## Notes

This property holds the parent of this field.

Each field may have a number of children which you can access using the Kids property. Each child will have one parent which you can access using the Parent property. Fields at the top of the hierarchy will have a null parent.

Setting this property only changes the parent reference held by this field. It makes no other changes to the field hierarchy. The field is not removed from the Kids of its previous parent or added to the Kids of the new one. If the field is also an annotation on a page, the page is not updated either.

In general you should only set this property if you are also going to make the corresponding changes to the hierarchy yourself.

## Example

None.

