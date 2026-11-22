# ReusesApplication Function

Gets a value indicating whether an import application process is to be kept running and reused.

## Syntax

```csharp
bool ReusesApplication(ImportApplicationType app)
```

## Params

| Name | Description |
| :---: | --- |
| app | The import [application](../2-properties/application.md). |
| return | Whether the application process is to be kept running and reused. |

## Notes

This function returns the reuse status of an application.

The reuse status can be changed with [EnableApplicationReuse](enableapplicationreuse.md).
