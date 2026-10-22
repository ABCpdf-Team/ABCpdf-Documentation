# CompliancePades Property

## Notes

The signature PAdES compliance level.

The PadesLevel enumeration may take the following values:

When you call one of the Sign methods, this property specifies the desired compliance level the document should conform to.

When you call Validate, this value will be set to the highest compliance level the signature conforms to. If Validate has not been called on an existing signature, this value will remain set to its default value of PadesLevel.None.

Any PAdES compliance level greater than PAdES_B_B, means that it is also compliant to any of the preceding PAdES compliance levels in the order specified above. So PAdES_B_LT is also PAdES_B_T and PAdES_B_B compliant.

If a compliance level of PAdES_B_T or above is specified when signing, a Timestamp Authority will be required. If a TimestampServiceUrl is specified then that value is used. If no TimestampServiceUrl is specified and the signing certificate has a certificate extension with Oid 1.2.840.113583.1.1.9.1, this extension value is used. Otherwise an exception is thrown.

If a compliance level of PAdES_B_LT or PAdES_B_LTA is specified when signing, the signing certificate should have online OCSP and/or online CRL certificate extensions specified in one of the certificates in the chain of trust.

PAdES baseline compliance levels are specified in ETSI TS 103 172 which can be found at www.etsi.org.

## Example

The following example shows how to sign a PAdES_B_LTA signature with a certificate with its private key on a Hardware Security Module (HSM).

Usually when the HSM is inserted any certificates are automatically inserted into the Windows Certificate Store. The signing certificate can then be obtained via the .NET X509Store interface.

To silently sign using a certificate on an HSM you will need to provide the password as a SecureString.

[C#]using var doc = new Doc(); doc.Read("../mypics/BlankSignature.pdf"); var sig = (Signature)doc.Form.Fields["Signature1"]; sig.Reason = "Final Version"; sig.Location = "New York"; sig.TimestampServiceUrl = new Uri("http://timestamp.digicert.com"); sig.CompliancePades = Signature.PadesLevel.PAdES_B_LTA; X509Certificate2 cert = Certificates.GetFromStore(); // User-defined function if (cert == null) return; // no certificate found var pwd = new SecureString(); foreach (char c in "password".ToCharArray()) pwd.AppendChar(c); sig.Sign(cert, pwd, new Oid(CryptoConfig.MapNameToOID("SHA256"))); doc.Save("SignedDoc.pdf");

Also see example code in: Signature MaxSignatureLength Property.

