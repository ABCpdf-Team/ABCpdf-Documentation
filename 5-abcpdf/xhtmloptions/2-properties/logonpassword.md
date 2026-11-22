# LogonPassword Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | A password to be used for authentication. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) and [MSHTML](2-formshtml.md) engines.

This property determines the authentication password to be used when accessing secured web sites.

For example you might set this property to "stevespassword" to authenticate as Steve when accessing a particular web site.

This property needs to be used in conjunction with the [LogonName](logonname.md) property.

## Example

See the [LogonName](logonname.md) property.

Also see example code in: [XHtmlOptions LogonName Property](logonname.md).
