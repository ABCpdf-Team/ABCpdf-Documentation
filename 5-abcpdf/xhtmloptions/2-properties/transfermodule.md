# TransferModule Property

## Notes

This property applies to the MSHTML engine only.

This property specifies the module to obtain URI/HTML data.

The TransferModuleType enumeration can take any of the following values:

RetryNetWebRequestOnEngineAccessDenied is useful in restricted environment. When MSHTML downloads web pages, it needs to access the following shell folders (specified in "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" in the registry):

If the folders are not accessible, the fallback folders History, "Temporary Internet Files", and Cookies in %TEMP% are used. (I.e. %TEMP%\History, "%TEMP%\Temporary Internet Files", and %TEMP%\Cookies.)

For example, your application uses the "ASP.NET v4.0" application pool and the identity is ApplicationPoolIdentity, you need to grant "IIS APPPOOL\ASP.NET v4.0" access to the folders with %LOCALAPPDATA% = %SystemRoot%\System32\config\systemprofile\AppData\Local and %APPDATA% = %SystemRoot%\System32\config\systemprofile\AppData\Roaming or to the fallback folders with %TEMP% = %SystemRoot%\Temp. (E.g., the user group for the DefaultAppPool application pool with identity ApplicationPoolIdentity is "IIS APPPOOL\DefaultAppPool".) The folders' default values thus expand to:

If MSHTML cannot access those folders (including the fallback folders), for specifying EngineTransfer, you may receive an exception containing something like "Unable to access URL. COM error 800c0008 in FACILITY_INTERNET. Not enough storage is available to process this command." ABCpdf with RetryNetWebRequestOnEngineAccessDenied specified will then, instead, obtain the HTML page using System.Net.WebRequest. In such a case, more than one request may be sent. Typically, this would manifest as three requests by ABCpdf for the same page.

## Example

None.

