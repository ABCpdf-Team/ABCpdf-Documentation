# MaxProcesses Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 10 (from registry value [HtmlProcessPoolSize](../../../3-concepts/d-registrykeys.md)) | No | The maximum number of processes for the HTML Engine. |

## Notes

This specifies the maximum number of processes for the HTML Engine, so the value depends on the selected [engine](../../xhtmloptions/2-properties/1-engine.md). You can call [SkipEngineDependencyCheck](../1-methods/skipenginedependencycheck.md) to avoid getting an exception for non-application of engine-dependent options.

The initial value comes from registry value [HtmlProcessPoolSize](../../../3-concepts/d-registrykeys.md) if the engine supports a variable number of processes. Changes made to the property value affect only the specified engine and are not propagated to the registry.

For the MSHtml engine, the property value is always 1 because the out-of-process execution (see registry value [MSHtmlBootstrap](../../../3-concepts/d-registrykeys.md)) only supports 1 process. Attempt to set this property for the MSHtml engine will cause an exception.

For the Gecko engine, the property value is fixed after the process pool has started. Attempt to change the property value for the Gecko engine while the process pool has started will cause an exception.

For the Chrome engine, the property value specifies the upper bound of the number of processes for creating worker processes. Decreasing the property value below [ProcessCount](1-processcount.md) does not terminate existing worker processes.
