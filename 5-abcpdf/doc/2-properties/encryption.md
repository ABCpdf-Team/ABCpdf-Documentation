# Encryption Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XEncryption`](../../xencryption/index.md) | No encryption. | Yes | The current encryption settings. |

## Notes

This property determines the current encryption settings. When you save the document the encryption settings - if any - will be used to determine the method of encryption to be used.

By default documents are not encrypted when created. However if you read an existing PDF document the encryption property will be updated to reflect the encryption settings used to create the original document.

PDF encryption supports two different types of password - a user password and an owner password. You can use either password to open and view the document. However unless you supply the owner password, permissions will be applied and access to the document may be restricted.

Typically PDF encryption is used to apply permissions to a document. The user password is left blank and only an owner password supplied. PDF readers will not prompt for a password if there is no user password. However any permissions will automatically be applied. In this way you can allow anyone to open the document but restrict access to operations like copying text, printing the document or extracting images.

The PDF 2.0 standard deprecates a number of these options as being potentially insecure. The recommended set for PDF 2.0 compliant documents is [XEncryption.Type](../../xencryption/2-properties/type.md) 5 with [XEncryption.SetCryptMethods](../../xencryption/1-methods/setcryptmethods.md) AESV3.

Please note that you are legally bound to respect the permissions present in existing PDF documents. For details please see the [Legal Requirement Section](../../../1-introduction/8-legalrequirements.md).

This property is read only, but the object it returns can be modified.

## Example

The following code saves a simple PDF document using a 256 bit encryption key. It applies a copy-protection permission to stop people copying text out of the document.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
doc.AddText("Hello World!");
doc.Encryption.Type = 5;
doc.Encryption.SetCryptMethods(CryptMethodType.AESV3);
doc.Encryption.CanCopy = false;
doc.Encryption.OwnerPassword = "owner";
doc.Save("docencrypt.pdf");
```

Also see example code in: [XEncryption SetCryptMethods Function](../../xencryption/1-methods/setcryptmethods.md).
