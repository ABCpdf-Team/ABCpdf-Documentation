# DSSPolicy Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `RevocationPolicy` | OcspThenCrl | No | The revocation policy to adopt when checking for the Document Security Store (DSS). |

## Notes

The revocation policy to adopt when checking for the Document Security Store (DSS).

The RevocationPolicy enumeration may take the following values:

- None - No revocation policy.
- Ocsp - Use OCSP to check for revocation.
- Crl - Use CRL to check for revocation.
- OcspThenCrl - Use OCSP and then CRL to check for revocation.
- CrlThenOcsp - Use CRL and then OCSP to check for revocation.

With the OcspThenCrl and CrlThenOcsp selectors, the first method is used and the responses checked. If they are all valid then the process will go no further and the responses will be embedded in the DSS. If the responses are unavailable or invalid then the second method will be tried instead.
