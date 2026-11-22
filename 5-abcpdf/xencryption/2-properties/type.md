# Type Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The level of encryption to use. |

## Notes

This property determines the level of encryption used when saving the document. The default value of zero indicates that no encryption will be used.

Higher levels of encryption provide higher levels of security and more flexibility in applying permissions but also require more recent versions of Adobe Acrobat to view. The table below details valid combinations.

The PDF 2.0 standard deprecates a number of these options as being potentially insecure. The recommended set for PDF 2.0 compliant documents is Type 5 with [SetCryptMethods](../1-methods/setcryptmethods.md) AESV3.

| Type Value | 0 | 1 | 2 | 4 | 5 |
| --- | :---: | :---: | :---: | :---: | :---: |
| **Acrobat Version Required** | Any | 2.0 | 5.0 | 7.0 / X - see below | 9.0 / X - see below |
| **Encryption Key Length (bits)** | None | 40 | 128 | 128 | 256 |
| [Encryption Algorithm](../1-methods/setcryptmethods.md) | Identity | RC4 | RC4 | Identity/RC4/AES | Identity/AES |
| [Can Assemble](canassemble.md) |  |  | ✓ | ✓ | ✓ |
| [Can Change](canchange.md) |  | ✓ | ✓ | ✓ | ✓ |
| [Can Copy](cancopy.md) |  | ✓ | ✓ | ✓ | ✓ |
| [Can Edit](canedit.md) |  | ✓ | ✓ | ✓ | ✓ |
| [Can Extract](canextract.md) |  |  | ✓ | ✓ | ✓ |
| [Can Fill Forms](canfillforms.md) |  |  | ✓ | ✓ | ✓ |
| [Can Print](canprint.md) |  | ✓ | ✓ | ✓ | ✓ |
| [Can Print Hi](canprinthi.md) |  |  | ✓ | ✓ | ✓ |

On a technical level Acrobat 7 supported 128 bit AES and Acrobat 9 supported 256 bit AES encryption. However there were security flaws in the specification as relates to the way passwords were handled.

For this reason Adobe released an update to resolve these - PDF 1.7 Extension Level 8 - requiring Acrobat X. The specification for this was never formally published but it became part of the PDF 2.0 specification.

Since we feel it important that encryption be secure, we produce AES 128 and AES 256 documents conforming to this later specification - hence only readable by Acrobat X and later.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property and the [SetCryptMethods](../1-methods/setcryptmethods.md) method.

Also see example code in: [Doc Encryption Property](../../doc/2-properties/encryption.md), [XEncryption SetCryptMethods Function](../1-methods/setcryptmethods.md).
