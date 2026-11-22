# MaxAtomicImageSize Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 480 | No | The maximum size at which an image may be regarded as unbreakable. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

ABCpdf generally regards images as atomic - unbreakable over more than one page.

However when an image reaches a certain size it's impossible to stop the image being broken. To try do so would result in unacceptable gaps in the content. So the assumption that the image is atomic has to be disregarded.

This property reflects the height (in pixels) at which images will be redefined as non-atomic.
