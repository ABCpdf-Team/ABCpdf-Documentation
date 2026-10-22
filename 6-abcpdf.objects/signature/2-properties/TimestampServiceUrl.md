# TimestampServiceUrl
                Property

## Notes

If this property is not null when you call Sign, an X.509 RFC 3161 time-stamped signature will be created by using the service provided in the URL. Note that this property serves as an option for Sign, and is not persisted in the PDF document. If your time-stamping service provider requires authentication, you can specify your credentials in the Uri. For example, "https://username:password@example.com/tsp".

ABCpdf uses System.Net.WebRequest to send the time-stamping request. You can use System.Net.ServicePointManager.ServerCertificateValidationCallback to customize trust relationship establishment when you connect to an SSL/TLS channel.

## Example

Also see example code in: XForm AddDocTimestamp Function, Signature AddLTV Function, Signature CompliancePades Property, Signature MaxSignatureLength Property.

