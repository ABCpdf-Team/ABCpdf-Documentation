# NoCookie Property

## Notes

This property applies to the MSHTML engine only.

This property determines whether automatic cookies are disabled. If it is true, PageLoadMethod must be effectively MonikerForHtml.

The HTML engine manages cookies as it receives HTTP/HTTPS responses and sends HTTP/HTTPS requests. If this property is set to true, cookies stored in the local cookie database will not be sent in requests, and cookies received in responses will not be stored in the local cookie database.

Cookies specified in HttpAdditionalHeaders are not sent in requests if automatic cookies are enabled. Set this property to true if cookies are specified in HttpAdditionalHeaders.

## Example

See the HttpAdditionalHeaders property.

Also see example code in: XHtmlOptions HttpAdditionalHeaders Property.

