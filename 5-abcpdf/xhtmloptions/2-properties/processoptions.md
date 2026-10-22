# ProcessOptions Property

## Notes

This property applies to all the HTML engines: ABCChrome, ABCGecko, ABCWebKit and MSHTML.

For each HTML engine that uses worker processes, you can set the properties in the XHtmlProcessOptions object to specify the options for new worker processes.

The worker processes are in a process pool for each HTML engine, which is shared by different instances of Doc. However, the options used are not reflected back to the (writable) XHtmlProcessOptions properties for different instances of Doc.

The options are used only at the start of the process pool and must not be disposed of before the process pool is stopped. If the process pool has started, the options are ignored.

If the process pool has started, to use a different set of options for subsequent HTML rendering, you will have to stop the process pool by calling EndTasks so that all worker processes are terminated. XHtmlProcessOptions.PoolHasStarted is false when the process pool is stopped.

## Example

None.

