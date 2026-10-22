# ContentCount Property

## Notes

This property applies to the ABCGecko and MSHTML engines.

The minimum number of items a page of HTML should contain.

If the number for the MSHTML engine is less than this value, then the page will be assumed to be invalid

For the Gecko engine the content may include non drawing operations such as transforms and state saves and restores. It is only if all items are non-drawing and the total content count is below this value that the page is assumed to be invalid. Typically this will only occur if the system is running low on free memory.

Depending on the RetryCount setting (for MSHTML) or the ProcessOptions.RetryCount setting (for Gecko), the page may be re-requested or an error may be returned.

## Example

See the RetryCount property.

Also see example code in: XHtmlOptions RetryCount Property.

