# Manual Installation

Under most circumstances, you will want to install ABCpdf .NET using the standard installer and register it using the PDFSettings control panel.

Occasionally, you may wish to install ABCpdf manually. To do this, you will need the files listed below as obtained from the ABCpdf programs folder (look in %PROGRAMFILES%). There are different files for Linux deployment which you will find in the Linux subdirectory.

> **32 vs 64.** Do I need the 32-bit DLLs or the 64-bit ones or both?
>
> If your project targets x86 then you will only ever need the 32-bit DLLs (these will execute under WOW64 on a 64-bit machine). If it targets x64 then you will only ever need the 64-bit DLLs.
>
> If your project targets AnyCPU then you need the 32-bit DLLs on a 32-bit version of Windows and the 64-bit ones on a 64-bit version.
>
> However it does not hurt to have all the DLLs installed. Only the ones which are needed will be used.

| Windows File | Linux File | Notes |
| :---: | :---: | --- |
| ABCpdf.NET11.dll | ABCpdf.NET11.dll | The Assembly used by .NET 11.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.NET10.dll | ABCpdf.NET10.dll | The Assembly used by .NET 10.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.NET9.dll | ABCpdf.NET9.dll | The Assembly used by .NET 9.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.NET8.dll | ABCpdf.NET8.dll | The Assembly used by .NET 8.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.NET7.dll | ABCpdf.NET7.dll | The Assembly used by .NET 7.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.NET6.dll | ABCpdf.NET6.dll | The Assembly used by .NET 6.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.NET5.dll | n/a | The Assembly used by .NET 5.0.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf.dll | n/a | The Assembly used by .NET 4.0.<br>The MSI installer places this Assembly in the GAC to allow global access from any .NET application. It installs a second reference copy at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, if you are installing manually, you can just place this file in the bin directory of your application. |
| ABCpdfCore.dll | n/a | The Assembly used by .NET Core 3.1.<br>The MSI installer places this Assembly at the following location:<br>%ProgramFiles%\\WebSupergoo\\ABCpdf14 .NET\\Common\\<br>However, typically you will be using the DLL as provided by the ABCpdf NuGet package. |
| ABCpdf14-32.dll<br>ABCpdf14-64.dll | libABCpdf14-64.so | The ABCpdf core engine library files.<br>These libraries incorporate our proprietary Direct to PDF technology and are designed for high performance PDF manipulation in a multithreaded environment.<br>On Linux there is a 64-bit version only. You can place this in the bin directory of your application.<br>On Windows there is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.<br>The DLLs may be placed into the System32 directory typically at:<br>%SystemRoot%\\System32\\<br>However, if you are installing manually, you can just place them in the bin directory of your application. |
| 3DGlue13-32.dll<br>3DGlue13-64.dll | n/a | This is an optional component required for use of the PDF 3D rendering.<br>There is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.<br>This DLL is normally located in the same directory as the core engine. |
| ChakraCore32.dll<br>ChakraCore64.dll | libChakraCore64.so | This is an optional component required for form JavaScript calculations.<br>On Linux there is a 64-bit version only. You can place this in the bin directory of your application.<br>On Windows there is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.<br>If this component is not installed then field JavaScript calculations will not function. The effect will be the same as having [XForm.UseFieldScript](../5-abcpdf/xform/2-properties/usefieldscript.md) set to false.<br>These library files are normally located in the same directory as the core engine. |
| PrintHook32.dll<br>PrintHook64.dll | n/a | This is an optional component required for use of the XpsAny [ReadModule](../5-abcpdf/xreadoptions/2-properties/1-readmodule.md).<br>It is unlikely that you will want to use this, as the functionality of the XpsAny module has been largely superseded by other modules.<br>The component intercepts the Microsoft XPS Document Writer and enables ABCpdf to import an extended range of file types via XPS.<br>There is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.<br>This DLL is normally located in the same directory as the core engine. |
| ABCChrome65 (directory) | n/a | This is an optional component required for use of the [ABCChrome HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) prior to ABCpdf version 12.<br>This folder should be placed in the bin directory (next to ABCpdf.dll). |
| ABCChrome86 (directory) | n/a | These are optional components for use of the [ABCChrome HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) from version 12.<br>This folder should be placed in the bin directory (next to ABCpdf.dll). |
| ABCChrome117 (directory) | ABCChrome117 (directory) | These are optional components for use of the [ABCChrome HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) from version 13.<br>This folder should be placed in the bin directory (next to ABCpdf.dll). |
| ABCChrome123 (directory) | ABCChrome123 (directory) | These are optional components for use of the [ABCChrome HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) from version 13.<br>This folder should be placed in the bin directory (next to ABCpdf.dll). |
| ABCChrome146 (directory) | ABCChrome146 (directory) | These are optional components for use of the [ABCChrome HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) from version 14.<br>This folder should be placed in the bin directory (next to ABCpdf.dll).<br>Only ABCChrome146 is required for the default ABCChrome engine. |
| ABCGeckoWP.exe,<br>XULRunner38_0 (directory) | n/a | This is an optional component required for use of the [Gecko HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md).<br>This EXE is the interface ABCpdf uses to access the Gecko HTML engine. However, it is not the engine itself. The engine is held in the XULRunner38_0 folder, which must be located in the same directory as ABCGeckoWP.exe.<br>You should generally put these items in the bin directory (next to ABCpdf.dll). ABCpdf uses a LoadLibrary type search to find the EXE, so it can be put in other places, but taking advantage of this may result in an installation which is confusing to other people.<br>Be aware that on x64 Windows, if you put ABCGeckoWP.exe in %SystemRoot%\\System32, File System Redirection will prevent it from finding the XULRunner38_0 folder. For this type of deployment you would need to use %SystemRoot%\\SysWOW64 instead. |
| TaskGardener.exe | n/a | This is an optional component required for out-of-process execution in restricted permission environments.<br>The [Gecko HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) runs in separate worker processes. In a restricted environment, such as IIS, it is not possible to specify the user account to directly start a process. If your IIS application specifies the user in [Doc.HtmlOptions.ProcessOptions.UserName](../5-abcpdf/xhtmlprocessoptions/2-properties/username.md), you will need to install this EXE as a Windows Service so that it starts processes for ABCpdf.<br>Run it with -install to install it as a Windows Service or with -uninstall to uninstall it. |
| ABCWebKit (directory) | n/a | This is an optional component required for use of the [ABCWebKit HTML engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md).<br>This folder should be placed in the bin directory (next to ABCpdf.dll). From version 2.2 |

If you are deploying manually to a restricted permission environment such as IIS and also you are using the MSHtml engine for converting HTML content, then you may need to check the registry for certain structures. The registry key HKEY_USERS\\.DEFAULT\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Devices should contain printer entries. The Microsoft XPS Document Writer that comes with Windows suffices to satisfy this requirement. If there are no entries in this key, you can copy them from HKEY_CURRENT_USER\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Devices. Absence of entries in this registry key may result in errors from the MSHtml engine when using ABCpdf in IIS.

> **Background.** Why XULRunner?
>
> Well, XUL (pronounced zool) is a kind of enhanced XHTML designed for cross platform user interface development. The name XUL is both an acronym and also a reference to the scene in Ghostbusters in which an ancient god called Zuul possesses Dana and tells Dr Venkman,
>
> > "There is no Dana, only Zuul!"
>
> Since XUL incorporates everything needed for an application in a completely self-contained manner, the developers adopted the catchphrase,
>
> > "There is no data, only XUL."
>
> Other references to the Ghostbusters movie are scattered throughout the development of Mozilla, Gecko and Firefox.

Most calls to ABCpdf will result in a trial license being installed if it is found that no license has yet been installed. At minimum, all that is required is to query the value of the [XSettings.LicenseDescription](../5-abcpdf/xsettings/2-properties/licensedescription.md) property. Write access to the registry is required for a trial to be inserted.

```csharp
using WebSupergoo.ABCpdf14;
MessageBox.Show("New License: " + XSettings.LicenseDescription);
```

You can use a full license key as provided to you when you purchase, or you can use a trial license key copied from the PDFSettings application. To enter a license key, call [XSettings.InstallLicense](../5-abcpdf/xsettings/1-methods/installsystemlicense.md) or at application startup before any ABCpdf objects have been created. If you have purchased a Redistribution license, you may prefer to call [XSettings.InstallRedistributionLicense](../5-abcpdf/xsettings/1-methods/installredistributionlicense.md). In both cases the license will remain available to the process until it unloads.

Make sure you check the return value to ensure that the license has taken. If it has not, then report back the XSettings.LicenseDescription and the XSettings.Version. Something like this.

```csharp
using WebSupergoo.ABCpdf14;
// here we use a trial license key as copied from the PDFSettings application
if (XSettings.InstallLicense("cd9b5c07db69df2bf57c0a04d9bca58b10c44889c9fb197984e592f49addfce5ec5fe85d7b9205bc"))
  MessageBox.Show($"License Installed Successfully: {XSettings.LicenseDescription} Version {XSettings.Version}");
else
  MessageBox.Show($"License Installation Failed: {XSettings.LicenseDescription} Version {XSettings.Version}");
```

> **Shared Hosts.** Most installations of ABCpdf .NET on shared servers are seamless. However, you need to be aware that you are a guest on the server and your host may have locked down permissions in ways which will make your life difficult. If this occurs, there is typically little that either you or we can do about it.
>
> This is why we recommend deployment on a dedicated server. Dedicated servers are cheaper than you might think, and the level of control they allow is only one of the very significant advantages they afford. It is one of the best decisions you can make.
>
> If you are intending to install on a shared server, the essential thing to do is to deploy early and discover any issues before they become major problems.
