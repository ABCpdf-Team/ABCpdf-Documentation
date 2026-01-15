# AddDocTimestamp Function

Adds a Signature field compatible with a DocTimeStamp.

## Syntax

```csharp
Signature AddDocTimestamp()<br> Signature AddDocTimestamp(string name)
```

## Params

| Name | Description |
| --- | --- |
| name | The name of the document timestamp field. If no name is specified a unique name will be added. |

## Notes

Adds a Signature field compatible with a document timestamp. Add an RFC 3161 compliant document timestamp field to the form. To sign the timestamp you need to specify either a TimestampServiceUrl or a CustomSigner and then call Timestamp.

## Example

&nbsp;

```csharp
using var doc = new Doc();
// ... set up the doc perhaps by reading a PDF
if (doc.PageCount == 0)
  doc.Page = doc.AddPage();
var sig = doc.Form.AddDocTimestamp("Timestamp");
var uri = new Uri("http://timestamp.digicert.com");
var oid = new Oid(CryptoConfig.MapNameToOID("SHA256"));
sig.TimestampServiceUrl = uri;
sig.Timestamp(oid, 0);
```

