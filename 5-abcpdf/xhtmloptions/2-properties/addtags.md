# AddTags Property

## Notes

This property applies to the ABCChrome, ABCGecko and MSHTML engines.

This property determines whether selected elements in the HTML are noted so that their location can be determined at a later date.

After adding your web pages you can retrieve information about the items on the PDF page using the GetTagIDs and the GetTagRects methods.

Only HTML elements which have a visual representation can be tagged. If you are unsure if your item has a visual representation, put a border style on the element. If you can see the border then you can tag it.

Using the ABCChrome engine you specify tags using attributes. Using the Gecko and MSHTML engines you specify tags using styles. The change from styles to attributes was made as the original styles based method became standards non-compliant.

The ABCChrome engine relies on JavaScript for this feature, so if you set the UseScript property to false, it will cease to operate.

For the ABCChrome engine, elements with an attribute 'abcpdf-tag-visible' will be tagged. For example:

<p id="p1" abcpdf-tag-visible="">Gallia est omnis divisa in partes tres.<p>

For the Gecko and MSHTML engines, elements of style 'abcpdf-tag-visible: true' will be tagged. For example:

<p id="p1" style="abcpdf-tag-visible: true">Gallia est omnis divisa in partes tres.<p>

However for the Gecko engine it is generally also a good idea to apply a border to ensure that the item is taggable. For example:

<p id="p1" style="abcpdf-tag-visible: true; outline: 1px solid transparent;">Gallia est omnis divisa in partes tres.<p>

## Example

See the GetTagRects and the GetTagUntransformedRects methods.

Also see example code in: XHtmlOptions GetTagRects Function, WebPageOperation Doc Property.

