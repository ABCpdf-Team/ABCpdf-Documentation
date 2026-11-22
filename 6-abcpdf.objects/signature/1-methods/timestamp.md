# Timestamp Function

Sign a document timestamp signature field using a Timestamping Authority (TSA).

## Syntax

```csharp
void Timestamp(Oid oid, int reserve)
void Timestamp(Oid oid, DataType dataType, int reserve)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| oid | The hash algorithm to use to create the digest of the document data, for example new Oid("SHA256"). |
| reserve | The number of bytes to reserve for the returned signed timestamp data. A typical value might be in the region of 5000. If the value is too small an exception will be raised. This value is only relevant if you are using a CustomSigner. |
| dataType | The type of data to be passed to the CustomSigner and expected back from it. This value is only relevant if you are using a CustomSigner or CustomSigner2.<br>For details of the possible values see the [CustomSignerArgumentType](../2-properties/customsignerargumenttype.md) property. |

## Notes

Sign a document timestamp signature field using a Timestamping Authority (TSA).

The signature must be an unsigned RFC 3161 timestamp signature. If you need to create such a signature you can do so using the [XForm.AddDocTimestamp](../../../5-abcpdf/xform/1-methods/adddoctimestamp.md) method.

You need to set one of either the [TimestampServiceUrl](../2-properties/timestampserviceurl.md) or the [CustomSigner](../2-properties/customsigner.md) properties before calling this function. The TimestampServiceUrl is preferred over the CustomSigner if both are set.

If you are using a CustomSigner the delegate method will be passed the raw SHA256 digest of the object to be time stamped (i.e. the document contents). It should return a DER representation of a timestamp token as defined in RFC 3161.

The timestamp signing operation is queued so you will typically want to call [Doc.Save](../../../5-abcpdf/doc/1-methods/save.md) or [Commit](commit.md) after calling this function.

## Example

None.

Also see example code in: [XForm AddDocTimestamp Function](../../../5-abcpdf/xform/1-methods/adddoctimestamp.md).
