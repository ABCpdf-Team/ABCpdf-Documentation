# EntryName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | This property represents the name of the separation color space. |

## Notes

This property represents the name of the separation color space.

The name is an arbitrary value such as "Flame" which intended for human readability.

It may also take the special values "All" or "None".

The former means all available colorants on an output device while the latter means none of them.

As such the value "All" will typically output rich black and the latter will output nothing.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 157.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=165)

The name identifies the target colorant. On devices that produce the named colorant directly, the tint value is passed to that channel. The special name All addresses every available colorant at once; None addresses no colorant.

Colorant names are case-sensitive. In a document intended for spot-colour printing, the name must match the ink name expected by the RIP or print workflow exactly.
