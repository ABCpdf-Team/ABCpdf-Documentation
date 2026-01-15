# SetConfigSection Method

Set the application configuration section.

## Syntax

```csharp
void SetConfigSection(ConfigSection section)
```

## Params

| Name | Description |
| --- | --- |
| section | The ABCpdf configuration section. |
| return | None. |

## Notes

Use this method to change ABCpdf's configuration section object.

Normally, you will not need to call this method because ABCpdf automatically detects the presence of the default configuration file. It does so by calling System.Configuration.ConfigurationManager.GetSection("ABCpdf13"). So, as long as you have a valid ABCpdf13 element in your configuration file, there should be no need to call this method.

For local applications, configuration files are normally stored in the same folder as the application and are called <application.exe>.config, where <application.exe> is the file name of the application. For web applications, the configuration section is stored in Web.config. On Linux a config file must be explicitly loaded using SetConfigFile.

The ABCpdf section name should be ABCpdf13. The type is WebSupergoo.ABCpdf13.ConfigSection. Refer to the SetConfigFile example for details.

ConfigSection is an opaque class that contains an array of Preferences. Each preference has a Key and a Value.

Warning: changing preferences from ABCpdf events/callbacks for operations that use those preferences may cause problems.

