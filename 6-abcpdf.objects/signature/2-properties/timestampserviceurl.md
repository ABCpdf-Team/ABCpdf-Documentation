# TimestampServiceUrl Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `System.Uri` | null | No | The URL to a time-stamping service. |

## Notes

If this property is not null when you call [Sign](../1-methods/sign.md), an X.509 [RFC 3161](http://tools.ietf.org/html/rfc3161) time-stamped signature will be created by using the service provided in the URL. Note that this property serves as an option for [Sign](../1-methods/sign.md), and is not persisted in the PDF document.

If your time-stamping service provider requires authentication, you can specify your credentials in the Uri. For example, "https://username:password@example.com/tsp".

ABCpdf uses System.Net.WebRequest to send the time-stamping request. You can use [System.Net.ServicePointManager.ServerCertificateValidationCallback](http://msdn.microsoft.com/en-us/library/system.net.servicepointmanager.servercertificatevalidationcallback.aspx) to customize trust relationship establishment when you connect to an SSL/TLS channel.

## Example

Also see example code in: [XForm AddDocTimestamp Function](../../../5-abcpdf/xform/1-methods/adddoctimestamp.md), [Signature AddLTV Function](../1-methods/addltv.md), [Signature CompliancePades Property](compliancepades.md), [Signature MaxSignatureLength Property](maxsignaturelength.md).
