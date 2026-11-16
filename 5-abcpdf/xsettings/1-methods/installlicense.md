# InstallLicense Method

Install a  license.

## Syntax

[C#]

```csharp
static bool InstallLicense(string license, bool throwOnFailure = true)
```

## Params

| **Name** | **Description** |
| --- | --- |
| license | The license to install. |
| throwOnFailure | Whether to throw an exception on failure. |
| return | True if a license is installed, otherwise false. |

## Notes

Use this method to install a license. Call this method at application startup before any ABCpdf objects have been created. You only need to call this method once though calling it additional times will not cause problems.

Any license installed using this method will remain available to the current process (or application pool) until it unloads.

Make sure you check the return value to ensure that the license has taken. If it has not, then report back the XSettings.LicenseDescription and the XSettings.Version.

## Example

See [Manual Installation](../../../3-concepts/6-installation.htm).
