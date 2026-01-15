# SetConfigFile Function

Set the application configuration using a Linux style config file.

## Syntax

```csharp
static void SetConfigFile(string path)
```

## Params

| Name | Description |
| --- | --- |
| path | The path to the config file. |

## Notes

Set the application configuration file. This can be used in situations in which you have a custom config file for your application - most commonly on Linux. On Windows ABCpdf first looks for preferences  in the default config file. For an executable this will be app.config in the same directory as the executable. For a web site it will be a web.config at the root of the web app. Under Linux this does not happen. If a preference is not found here then any config file specified using the SetConfigFile method will be scanned for an appropriate setting. If the method has not been called and you are on Linux then the default config file will be used - ~/.config/WebSupergoo/ABCpdf13.config. On Windows if the preference is still not found then the registry will be scanned for the value. Finally if no value has been found then a default will be used. Here is an example of a .config file that contains a valid ABCpdf config section. The illustrated ABCpdf preferences are TempDirectory and MakeURLsUnique. <?xml version="1.0" encoding="utf-8"?>

<configuration>

<configSections>

<section name="ABCpdf13" type=" WebSupergoo.ABCpdf13.ConfigSection, ABCpdf" allowLocation="true"

allowDefinition="Everywhere" allowExeDefinition="MachineToLocalUser" overrideModeDefault="Allow"

restartOnExternalChanges="true" requirePermission="true" />

</configSections>

<ABCpdf13>

<preferences>

<clear />

<add Key="TempDirectory" Value="C:\Temp" />

<add Key="MakeURLsUnique" Value="0" />

</preferences>

</ABCpdf13>

</configuration>

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

