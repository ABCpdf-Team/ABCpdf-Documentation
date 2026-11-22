# PageContents Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`PageContents`](../../8-pagecontents/index.md) | n/a | No | The pages to be operated upon. |

## Notes

This property specifies the pages to be operated upon.

Adding pages to a PageContents object can be a costly procedure taking a noticable amount of time.

So if you are performing a set of analysis operations on the same pages it can be more efficient to assign the PageContents from one to another rather than repeatedly re-populate from the original document.

Note that the [UnembedComplexFonts](unembedcomplexfonts.md) option normally results in document-wide changes. If this happens the PageContents may be invalidated and will have to be re-built if required again. While this happens invisibly it is a relatively expensive operation and for this reason it is a good idea to perform this type of operation last rather than first if you are performing a chain of operations.
