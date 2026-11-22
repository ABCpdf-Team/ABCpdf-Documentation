# EnableApplicationReuse Function

Enables an import application process to be reused so that it is terminated only manually or when this operation is disposed of.

## Syntax

```csharp
bool EnableApplicationReuse(ImportApplicationType app, bool reuse)
```

## Params

| Name | Description |
| :---: | --- |
| app | The import [application](../2-properties/application.md). |
| reuse | Whether the application process is to be reused. |
| return | Whether the reuse status of the application has been changed. |

## Notes

This function changes the [reuse status](reusesapplication.md) of an application. Currently, the application processes of only Microsoft Word, Microsoft Excel, and Microsoft PowerPoint can be reused.

Without application reuse, each call to [ImportAny](importany.md) starts and terminates the application process. To avoid the overhead of the application start-up and exit, enable the reuse of the process for the particular application(s). The same process of that application is used in multiple calls to [ImportAny](importany.md) of the same XpsImportOperation that uses the [application](../2-properties/application.md).

The [reuse status](reusesapplication.md) is not changed if the process reuse of the application is not supported. If the process is [running](applicationisrunning.md) (for this XpsImportOperation object), the running process is terminated when its reuse is disabled.
