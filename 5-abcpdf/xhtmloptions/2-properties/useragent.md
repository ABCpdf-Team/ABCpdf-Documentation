# UserAgent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | The user-agent string. |

## Notes

This property determines the user-agent string for the MSHTML engine. If it is empty, a default user-agent string for Internet Explorer (version 8 or below, depending on the version of Internet Explorer) is used.

This is used for downloading the web page as well as all linked resources, whereas User-Agent set in [HttpAdditionalHeaders](httpadditionalheaders.md) is used only for downloading the web page. If User-Agent is also set in HttpAdditionalHeaders, the HTTP header takes precedence (for downloading the web page).
