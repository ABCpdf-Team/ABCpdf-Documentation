# PublicKeyCryptFilterElement Class

This class represents the public-key security handler crypt filter. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 27, page 69.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=77)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 27, page 91.](https://www.iso.org/standard/63534.html)

The public-key crypt filter dictionary extends the base crypt filter with entries for certificate-based encryption. It identifies the recipients and permissions for the objects protected by this filter.

The Recipients entry holds the DER-encoded CMS EnvelopedData structures for each authorised recipient, exactly as in the top-level public-key encryption dictionary. This allows different groups of recipients to be defined for different classes of objects within the same document.

The EncryptMetadata entry controls whether the document metadata stream is covered by this filter. When false, metadata remains unencrypted regardless of the filter's other settings.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.CryptFilterElement`](../1076-cryptfilterelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PublicKeyCryptFilterElement`

## Methods

| Method | Description |
| --- | --- |
| [PublicKeyCryptFilterElement](1-methods/01-publickeycryptfilterelement.md) | Create a new PublicKeyCryptFilterElement. |
|  | [inherited methods...](../1076-cryptfilterelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryRecipients](2-properties/01-entryrecipients.md) | Represents the "Recipients" entry of the public-key security handler crypt filter object. |
| [EntryEncryptMetadata](2-properties/02-entryencryptmetadata.md) | Represents the "EncryptMetadata" entry of the public-key security handler crypt filter object. |
|  | [inherited properties...](../1076-cryptfilterelement/index.md) |
