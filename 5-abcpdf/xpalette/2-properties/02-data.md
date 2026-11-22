# Data Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `byte[]` | null | No | Raw bytes containing palette data. |

## Notes

Raw bytes containing palette data.

If you want to use a raw palette derived from some source other than file then provide the raw data using this property.

You may obtain such information by reading an .act file into memory.

Raw palettes consist of an array of 768 bytes holding 256 RGB triplets.
