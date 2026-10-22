# NoDefaultBackground Property

## Notes

This property applies to the ABCGecko engine only.

When the HTML page does not specify a background color, the Gecko engine applies the default background color specified by preference browser.display.background_color or overridden by preference browser.display.use_system_colors. This default color is always opaque.

Because the default preference specifies white, you get a white background (which you likely do not notice unless there is already some objects on the PDF page) if this property is set to false.

## Example

None.

