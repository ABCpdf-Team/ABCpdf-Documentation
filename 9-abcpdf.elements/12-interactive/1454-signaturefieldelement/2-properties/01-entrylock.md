# EntryLock Property

## Notes

Represents the "Lock" entry of the signature field object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a SignatureFieldLockElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 232, page 446.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 235, page 540.

The lock dictionary is evaluated at signing time to determine which fields the signature should lock, used in multi-party signing scenarios where each signer locks the fields they are responsible for.
