# Type Property

## Notes

This property determines the level of encryption used when saving the document. The default value of zero indicates that no encryption will be used.

Higher levels of encryption provide higher levels of security and more flexibility in applying permissions but also require more recent versions of Adobe Acrobat to view. The table below details valid combinations.

The PDF 2.0 standard deprecates a number of these options as being potentially insecure. The recommended set for PDF 2.0 compliant documents is Type 5 with SetCryptMethods AESV3.

On a technical level Acrobat 7 supported 128 bit AES and Acrobat 9 supported 256 bit AES encryption. However there were security flaws in the specification as relates to the way passwords were handled.

For this reason Adobe released an update to resolve these - PDF 1.7 Extension Level 8 - requiring Acrobat X. The specification for this was never formally published but it became part of the PDF 2.0 specification.

Since we feel it important that encryption be secure, we produce AES 128 and AES 256 documents conforming to this later specification - hence only readable by Acrobat X and later.

## Example

See the Doc.Encryption property and the SetCryptMethods method.

Also see example code in: Doc Encryption Property, XEncryption SetCryptMethods Function.

