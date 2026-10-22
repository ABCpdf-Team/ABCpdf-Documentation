# GlobalSign Example Project

## Project

The GlobalSign example project shows how to sign and validate PDF digital signatures using the GlobalSign cloud signing service.

For a good backgrounder on PDF signatures see the web page PDF Digital Signatures in C# – The Definitive Guide.

The code uses the REST API of the GlobalSign Digital Signing Service (DSS). It logs in, requests a signing identity and certificate, sends the document digest to be signed and obtains a trusted timestamp.

GlobalSign certificates are short lived, so the code also embeds Long Term Validation (LTV) information by specifying a PAdES level. This allows the signature to be verified long after the certificate has expired.

If you need to add a cloud based or remote digital signature to your documents, this project provides a good template.

