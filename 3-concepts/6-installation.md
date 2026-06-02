# Manual Installation

Under most circumstances, you will want to install ABCpdf .NET using the standard installer and register it using the PDFSettings control panel.

Occasionally, you may wish to install ABCpdf manually. To do this, you will need the files listed below as obtained from the ABCpdf programs folder (look in %PROGRAMFILES%). There are different files for Linux deployment which you will find in the Linux subdirectory.

The Assembly used by .NET 10.0.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The Assembly used by .NET 9.0.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The Assembly used by .NET 8.0.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The Assembly used by .NET 7.0.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The Assembly used by .NET 6.0.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The Assembly used by .NET 5.0.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The Assembly used by .NET 4.0.

The MSI installer places this Assembly in the GAC to allow global access from any .NET application. It installs a second reference copy at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, if you are installing manually, you can just place this file in the bin directory of your application.

The Assembly used by .NET Core 3.1.

The MSI installer places this Assembly at the following location:

%ProgramFiles%\WebSupergoo\ABCpdf14 .NET\Common\

However, typically you will be using the DLL as provided by the ABCpdf NuGet package.

The ABCpdf core engine library files.

These libraries incorporate our proprietary Direct to PDF technology and are designed for high performance PDF manipulation in a multithreaded environment.

On Linux there is a 64-bit version only. You can place this in the bin directory of your application.

On Windows there is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.

The DLLs may be placed into the System32 directory typically at:

%SystemRoot%\System32\

However, if you are installing manually, you can just place them in the bin directory of your application.

32 vs 64. Do I need the 32-bit DLLs or the 64-bit ones or both?

If your project targets x86 then you will only ever need the 32-bit DLLs (these will execute under WOW64 on a 64-bit machine). If it targets x64 then you will only ever need the 64-bit DLLs.

If your project targets AnyCPU then then you need the 32-bit DLLs on a 32-bit version of Windows and the 64-bit ones on a 64-bit version.

However it does not hurt to have all the DLLs installed. Only the ones which are needed will be used.

This is an optional component required for use of the PDF 3D rendering.

There is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.

This DLL is normally located in the same directory as the core engine.

This is an optional component required for form JavaScript calculations.

On Linux there is a 64-bit version only. You can place this in the bin directory of your application.

On Windows there is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.

If this component is not installed then field JavaScript calculations will not function. The effect will be the same as having XForm.UseFieldScript set to false.

These library files are normally located in the same directory as the core engine.

This is an optional component required for use of the XpsAny ReadModule.

It is unlikely that you will want to use this, as the functionality of the XpsAny module has been largely superceded by other modules.

The component intercepts the Microsoft XPS Document Writer and enables ABCpdf to import an extended range of file types via XPS.

There is a 32-bit and a 64-bit version of this DLL. Having both installed is the safest and simplest way to deploy.

This DLL is normally located in the same directory as the core engine.

This is an optional component required for use of the ABCChrome HTML engine prior to ABCpdf version 12.

This folder should be placed in the bin directory (next to ABCpdf.dll).

These are optional components for use of the ABCChrome HTML engine from version 12.

This folder should be placed in the bin directory (next to ABCpdf.dll).

These are optional components for use of the ABCChrome HTML engine from version 13.

This folder should be placed in the bin directory (next to ABCpdf.dll).

These are optional components for use of the ABCChrome HTML engine from version 13.

This folder should be placed in the bin directory (next to ABCpdf.dll).

These are optional components for use of the ABCChrome HTML engine from version 14.

This folder should be placed in the bin directory (next to ABCpdf.dll).

Only ABCChrome146 is required for the default ABCChrome engine.

This is an optional component required for use of the Gecko HTML engine.

This EXE is the interface ABCpdf uses to access the Gecko HTML engine. However, it is not the engine itself. The engine is held in the XULRunner38_0 folder, which must be located in the same directory as ABCGeckoWP.exe.

You should generally put these items in the bin directory (next to ABCpdf.dll). ABCpdf uses a LoadLibrary type search to find the EXE, so it can be put in other places, but taking advantage of this may result in an installation which is confusing to other people.

Be aware that on x64 Windows, if you put ABCGeckoWP.exe in %SystemRoot%\System32, File System Redirection will prevent it from finding the XULRunner38_0 folder. For this type of deployment you would need to use %SystemRoot%\SysWOW64 instead.

This is an optional component required for out-of-process execution in restricted permission environments.

The Gecko HTML engine runs in separate worker processes. In a restricted environment, such as IIS, it is not possible to specify the user account to directly start a process. If your IIS application specifies the user in Doc.HtmlOptions.ProcessOptions.UserName, you will need to install this EXE as a Windows Service so that it starts processes for ABCpdf.

Run it with -install to install it as a Windows Service or with -uninstall to uninstall it.

This is an optional component required for use of the ABCWebKit HTML engine.

This folder should be placed in the bin directory (next to ABCpdf.dll). From version 2.2

If you are deploying manually to a restricted permission environment such as IIS and also you are using the MSHtml engine for converting HTML content, then you may need to check the registry for certain structures. The registry key HKEY_USERS\.DEFAULT\Software\Microsoft\Windows NT\CurrentVersion\Devices should contain printer entries. The Microsoft XPS Document Writer that comes with Windows suffices to satisfy this requirement. If there are no entries in this key, you can copy them from HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Devices. Absence of entries in this registry key may result in errors from the MSHtml engine when using ABCpdf in IIS.

Background. Why XULRunner?

Well, XUL (pronounced zool) is a kind of enhanced XHTML designed for cross platform user interface development. The name XUL is both an acronym and also a reference to the scene in Ghostbusters in which an ancient god called Zuul possesses Dana and tells Dr Venkman,

Since XUL incorporates everything needed for an application in a completely self-contained manner, the developers adopted the catchphrase,

Other references to the Ghostbusters movie are scattered throughout the development of Mozilla, Gecko and Firefox.

Most calls to ABCpdf will result in a trial license being installed if it is found that no license has yet been installed. At minimum, all that is required is to query the value of the XSettings.LicenseDescription property. Write access to the registry is required for a trial to be inserted.

[C#] using WebSupergoo.ABCpdf14; MessageBox.Show("New License: " + XSettings.LicenseDescription);

You can use a full license key as provided to you when you purchase, or you can use a trial license key copied from the PDFSettings application. To enter a license key, call XSettings.InstallLicense or at application startup before any ABCpdf objects have been created. If you have purchased a Redistribution license, you may prefer to call XSettings.InstallRedistributionLicense. In both cases the license will remain available to the process until it unloads.

Make sure you check the return value to ensure that the license has taken. If it has not, then report back the XSettings.LicenseDescription and the XSettings.Version. Something like this.

[C#] using WebSupergoo.ABCpdf14; // here we use a trial license key as copied from the PDFSettings application if (XSettings.InstallLicense("cd9b5c07db69df2bf57c0a04d9bca58b10c44889c9fb197984e592f49addfce5ec5fe85d7b9205bc")) MessageBox.Show($"License Installed Successfully: {XSettings.LicenseDescription} Version {XSettings.Version}"); else MessageBox.Show($"License Installation Failed: {XSettings.LicenseDescription} Version {XSettings.Version}");

Shared Hosts. Most installations of ABCpdf .NET on shared servers are seamless. However, you need to be aware that you are a guest on the server and your host may have locked down permissions in ways which will make your life difficult. If this occurs, there is typically little that either you or we can do about it.

This is why we recommend deployment on a dedicated server. Dedicated servers are cheaper than you might think, and the level of control they allow is only one of the very significant advantages they afford. It is one of the best decisions you can make.

If you are intending to install on a shared server, the essential thing to do is to deploy early and discover any issues before they become major problems.

