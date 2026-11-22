# TimestampHashAlgorithm Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `System.Security.Cryptography.Oid` | Oid("SHA256") | No | The hash algorithm used to create the digest for timestamp requests. |

## Notes

This property enables you to specify the hash algorithm to be used for timestamp requests using your desired Time Stamping Authority (TSA).

In signature workflows there may be a number of different timestamps:

- The signature itself may be timestamped as with PAdES B_T compliance.
- An optional timestamp entry (/TS) may be added to the /VRI entry in the Document Security Store (DSS) for PAdES B_LT.
- A document timestamp is a special form of signature certifying the document at a particular time, as with PAdES B_LTA compliance.

For convenience when a signature is created with [SignatureCompliance](compliancepades.md) set to a level above PAdES_B_B this value is used to compute the digests for all required timestamping operations.

Note that MD5 or SHA1 should not be used where PAdES conformance is required.

It is unlikely that you would need to change this from the default Oid for SHA256.
