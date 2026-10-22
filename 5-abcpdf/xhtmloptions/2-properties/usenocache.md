# UseNoCache Property

## Notes

This property applies to the ABCGecko and MSHTML engines.

This property determines whether no-cache is enabled.

Setting this property to true forces any intervening proxy server to re-request the page.

For the MSHTML engine, setting this property to true sets INTERNET_FLAG_PRAGMA_NOCACHE. WinINET will add request header Pragma: no-cache if going through a HTTP/1.0 proxy and request header Cache-Control: no-cache if going through a HTTP/1.1 proxy.

For the Gecko engine, setting this property to true sets the following flags.

## Example

None.

