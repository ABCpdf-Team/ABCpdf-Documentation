# IgnoreCertificateErrors Property

## Notes

This property applies to the ABCChrome engine only.

This property determines whether certificate-related errors are ignored or not.

When retrieving pages via https URLs, ABCpdf will check that the SSL certificate is valid and trusted. If it is not you may not wish to proceed with the HTML render and instead throw an exception.

Using this property you can control whether error will be ignored or reported.
