# SetConfigSection Method

Set the application configuration section.

## Syntax

[C#]

```csharp
void SetConfigSection(ConfigSection section)
```

## Params

| **Name** | **Description** |
| --- | --- |
| section | The ABCpdf configuration section. |
| return | None. |

## Notes

Use this method to change ABCpdf's configuration section object.

Normally, you will not need to call this method because ABCpdf automatically detects the presence of the default configuration file. It does so by calling System.Configuration.ConfigurationManager.GetSection("ABCpdf14"). So, as long as you have a valid ABCpdf14 element in your configuration file, there should be no need to call this method.

For local applications, configuration files are normally stored in the same folder as the application and are called <application.exe>.config, where <application.exe> is the file name of the application. For web applications, the configuration section is stored in Web.config. On Linux a config file must be explicitly loaded using [SetConfigFile](setconfigfile.md).

The ABCpdf section name should be ABCpdf14. The type is WebSupergoo.ABCpdf14.ConfigSection. Refer to the [SetConfigFile](setconfigfile.md) example for details.

ConfigSection is an opaque class that contains an array of Preferences. Each preference has a Key and a Value.

The preference key is the same as the registry key name. For example, <add Key="LogErrors" Value="1" /> is equivalent to a DWORD registry key called LogErrors and with Value set to 1. Refer to [Registry Keys](3-concepts/d-registrykeys.md) in Concepts for further details. Make sure that the value matches the type as specified in [Registry Keys](3-concepts/d-registrykeys.md).

Warning: changing preferences from ABCpdf events/callbacks for operations that use those preferences may cause problems.

## Example

For an example of a typical config file see the [SetConfigFile](setconfigfile.md) method.
