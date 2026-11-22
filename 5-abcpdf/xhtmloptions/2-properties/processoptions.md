# ProcessOptions Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XHtmlProcessOptions`](../../xhtmlprocessoptions/index.md) | The default XHtmlProcessOptions | Yes | The options for new worker processes. |

## Notes

This property applies to all the HTML engines: [ABCChrome](2-forchrome.md), [ABCGecko](2-forgecko.md), [ABCWebKit](2-forwebkit.md) and [MSHTML](2-formshtml.md).

For each [HTML engine](1-engine.md) that uses worker processes, you can set the properties in the XHtmlProcessOptions object to specify the options for new worker processes.

The worker processes are in a process pool for each HTML engine, which is shared by different instances of [Doc](../../doc/index.md). However, the options used are not reflected back to the (writable) XHtmlProcessOptions properties for different instances of Doc.

The options are used only at the start of the process pool and must not be disposed of before the process pool is stopped. If the process pool has started, the options are ignored.

If the process pool has started, to use a different set of options for subsequent HTML rendering, you will have to stop the process pool by calling [EndTasks](../1-methods/endtasks.md) so that all worker processes are terminated. [XHtmlProcessOptions.PoolHasStarted](../../xhtmlprocessoptions/2-properties/1-poolhasstarted.md) is false when the process pool is stopped.
