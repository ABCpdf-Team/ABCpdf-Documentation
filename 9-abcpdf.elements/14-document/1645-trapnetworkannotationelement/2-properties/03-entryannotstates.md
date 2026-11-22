# EntryAnnotStates Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "AnnotStates" entry of the trap network annotation object. |

## Notes

Represents the "AnnotStates" entry of the trap network annotation object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 366, page 637.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=645)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 403, page 821.](https://www.iso.org/standard/63534.html)

The AnnotStates entry records the state of each annotation at trap time. Any change to annotation states invalidates the trap network because annotation appearances may affect trapping.
