# NoCookie Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to disable automatic cookies. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property determines whether automatic cookies are disabled. If it is true, [PageLoadMethod](pageloadmethod.md) must be effectively MonikerForHtml.

The HTML engine manages cookies as it receives HTTP/HTTPS responses and sends HTTP/HTTPS requests. If this property is set to true, cookies stored in the local cookie database will not be sent in requests, and cookies received in responses will not be stored in the local cookie database.

Cookies specified in [HttpAdditionalHeaders](httpadditionalheaders.md) are not sent in requests if automatic cookies are enabled. Set this property to true if cookies are specified in [HttpAdditionalHeaders](httpadditionalheaders.md).

## Example

See the [HttpAdditionalHeaders](httpadditionalheaders.md) property.

Also see example code in: [XHtmlOptions HttpAdditionalHeaders Property](httpadditionalheaders.md).
