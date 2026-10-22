# InitialWidth Property

## Notes

This property applies to the ABCChrome, ABCGecko and MSHTML engines.

When the BrowserWidth is zero ABCpdf will attempt to automatically determine an appropriate size for the page.

To do this it determines the scroll width and scroll height for the page. These are the dimensions which would need to be applied to the page to ensure that all content was displayed without the need to scroll.

Before these measurements are taken the page needs to be set to a default size. This value determines the width that is used.

This effectively means that the output will always be a minimum of this initial width. If you are working with narrow pages you may wish to reduce this value.

## Example

Also see example code in: ABCpdf Paged HTML Example.

