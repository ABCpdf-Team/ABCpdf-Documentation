# PoolHasStarted Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | n/a | Yes | Whether the process pool for the HTML Engine has started. |

## Notes

This gets whether the process pool for the HTML Engine has started.

The process options are used only at the start of the process pool. If the process pool has started, the options are ignored.

You can stop the process pool by calling [XHtmlOptions.EndTasks](../../xhtmloptions/1-methods/endtasks.md) so that all worker processes are terminated.
