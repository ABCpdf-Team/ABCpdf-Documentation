# CustomSignerArgumentType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `DataType` | Pkcs9Digest | No | The type of data to be passed to any custom signer. |

## Notes

The type of data to be passed to any custom signer.

The DataType type is a flags enumeration so different values can be combined together using bitwise operations.

The DataType enumeration may take the following values:

- Pkcs9Digest - When signing the callback will be provided with a PKCS9 ASN.1 encoded byte array containing the digest of the PDF content and attributes to be authenticated.
- RawDigest - When signing the callback will be provided with a hashed digest of the document data.
- TimeStampDigest - When time stamping provide the callback with a hashed digest, the time stamp message imprint, rather than an RFC 3161 time stamp request.
- TimeStampToken - When time stamping the callback will return a time stamp token rather than an RFC 3161 time stamp response.
- NoEmbeddedTimeStampUrl - Do not use any supplied URL to embed a time stamp.
- NoEmbeddedTimeStampCustom - Do not use any supplied callback to embed a time stamp.
