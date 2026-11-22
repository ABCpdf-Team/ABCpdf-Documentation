# EntryNames Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | This property represents the names of the colors within the DeviceN color space. |

## Notes

This property represents the names of the colors within the DeviceN color space.

The names are arbitrary values such as "Seabreeze" which are intended for human readability.

These may include the special value "None" which indicates no color, but may not include the special value "All".

Each name should be unique, with the exception of the special value "None" which may be repeated.

For definitive details see:.

- [The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 160.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=168)

The Names array lists the colorant names in component order. The first element corresponds to the first component value, the second to the second, and so on. The length of the array equals the number of components.

The special names All and None have the same meanings as in Separation: All addresses every available colorant; None addresses none. Other names identify specific colorants by their ink names.
