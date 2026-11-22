# EntryPID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SoftwareIdentifierElement`](../../1512-softwareidentifierelement/index.md) | null | No | Represents the "PID" entry of the media player info dictionary object. |

## Notes

Represents the "PID" entry of the media player info dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [SoftwareIdentifierElement](../../1512-softwareidentifierelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 291, page 503.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=511)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 302, page 630.](https://www.iso.org/standard/63534.html)

The PID entry holds an array of software identifier dictionaries, each identifying one version or variant of the player. The array allows multiple versions of the same player to be listed as acceptable.
