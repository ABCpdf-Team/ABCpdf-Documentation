# InstallSystemLicense Method

Install a system license.

## Syntax

```csharp
static bool InstallSystemLicense(string license, bool throwOnFailure = true)
```

## Params

| Name | Description |
| :---: | --- |
| license | The license to install. |
| throwOnFailure | Whether to throw an exception on failure. |
| return | True if a license is installed, otherwise false. |

## Notes

Use this method to install a system license. Call this method at application startup before any ABCpdf objects have been created.

This method saves the license for use on a system-wide basis. So, once a license is successfully installed, it will stay on the system and be picked up by ABCpdf automatically.

Licenses are specific to the process model so licenses installed for with 32-bit ABCpdf will not be available to 64-bit ABCpdf and vice versa. Indeed, a license may be installed successfully without being valid for the current process so it is a good idea to check [LicenseValid](../2-properties/licensevalid.md) after installing a system license.

For security reasons, you should not use this method unless you have complete control of the system on which you are installing. You need to make this call from an elevated process.

## Example

See [Manual Installation](../../../3-concepts/6-installation.md).
