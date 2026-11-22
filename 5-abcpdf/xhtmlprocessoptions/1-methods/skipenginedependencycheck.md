# SkipEngineDependencyCheck Method

Skip the check of engine-dependent options that are set since last HTML import.

## Syntax

```csharp
void SkipEngineDependencyCheck()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

This skips the check of engine-dependent options to avoid an exception. The values of engine-dependent options should be set after [Engine](../../xhtmloptions/2-properties/1-engine.md) has been set because the value applies only to the selected engine. To make sure that the set engine-dependent options is applied to the engine that is used for HTML import or process pool operation (e.g. [StartPool](startpool.md)), the HTML import or process pool operation checks for the equality of the set values and the values for the newly specified engine.

[MaxProcesses](../2-properties/1-maxprocesses.md) depends on the selected engine.
