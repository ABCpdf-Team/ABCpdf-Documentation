# FlateCompression Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | -1 | No | The level of compression to apply when using Flate compression. |

## Notes

The level of compression to apply when using Flate compression.

A value of minus one is used to indicate a default compression level, typically six.

Zero is no compression. Values from one to nine indicate progressively higher levels of compression.

Higher levels of compression take longer to achieve and can take significantly longer.

Using FlateCompression 3 and PngFilter None produces output about 2% larger than the default.

Using FlateCompression 1 and PngFilter Sub produces output about 10% larger than the default.
