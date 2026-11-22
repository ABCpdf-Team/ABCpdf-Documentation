# GetApplicationFolder Function

Gets the installation folder of an import application.

## Syntax

```csharp
static string GetApplicationFolder(ImportApplicationType app)
```

## Params

| Name | Description |
| :---: | --- |
| app | The import [application](../2-properties/application.md). |
| return | The installation folder of the application. |

## Notes

This function returns the installation folder of an application that can be used by [ImportAny](importany.md).

The installation folder of ImportApplicationType.ShellAssociation is null. For the Microsoft Office applications, it will be the Microsoft Office installation folder. If this function returns null for an application other than ShellAssociation, it means that the application is not installed or that ABCpdf has failed to find the application. If this is the case, [ImportAny](importany.md) will fail. Before calling [ImportAny](importany.md), you can use this function to make sure that ABCpdf finds the application.
