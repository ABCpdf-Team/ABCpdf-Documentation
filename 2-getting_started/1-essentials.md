# .NET Essentials

## Refs

You need to add a reference to ABCpdf from your Visual Studio Project. This tells Visual Studio to link the ABCpdf assembly into the build.

Typically you will do this by referencing the ABCpdf NuGet package. Right click on 'Dependencies' and then select the 'Manage NuGet Packages...' item, click on "Browse" and search for "ABCpdf - you should see ABCpdf amongst the results from NuGet.org.

If you have run the full MSI installer, ABCpdf is placed in the GAC, so under .NET 4 you can add a reference simply by looking in the 'Assemblies > Extensions' section of the Reference Manager. Just right click on 'References' in your project and 'Add Reference' - you'll see "ABCpdf .NET" near the top of the extensions list. .NET 5 and later do not have a GAC, so while you can add the relevant reference by browsing to the DLL in the ABCpdf installation folder, it is probably easier to add a NuGet reference.

If you are using .NET 10.0 your project target is "net10.0" however since ABCpdf makes use of Windows specific features, more commonly you will target "net10.0-windows". Indeed if you are using .NET 5 or later the format is the same - it is just a matter of adjusting the version number in the target. If you are using .NET Classic / Framework then your target will be slightly different - "v4.0" or later.

The ABCpdf NuGet package ships with the MSHTML and ABCChrome146 HTML conversion engines. If you want to use the ABCChrome123, ABCChrome117, ABCChrome86 or ABCChrome65 HTML conversion engine, you will need to reference the ABCChrome123, ABCChrome117, ABCChrome86 or ABCChrome65 NuGet packages in addition to the ABCpdf one. Similarly for ABCGecko you will need to reference the ABCGecko package. Similarly for ABCWebKit you will need the ABCWebKit package. All these engines are installed by default if you run the downloadable MSI installer.

You can mix and match the full MSI installer with the NuGet packages. If you reference a different NuGet version in your project then that version, rather than the MSI installed version, is the one that will be used. Be careful as it can be confusing if you have multiple different versions of ABCpdf in use.

If you are not using Visual Studio, you will need to consult the documentation for your chosen development environment.

## Notes

Different project types require different setups and these notes may help if you hit any problems.

Sometimes you may get exceptions saying that elements like WindowsBase, ConfigurationManager, Packaging and PresesentationCore are not available. A missing ConfigurationManager may sometimes also result in background TypeInitializationException exceptions being thrown.

WindowsBase is required for parts of ABCpdf which make use of WPF and XPS. To resolve this issue change the project settings to target Windows and then add a UseWPF tag to your project.

Currently Visual Studio does not support adding this tag so it has to be done by hand using a text editor. You need to insert it into your csproj file as follows.

<Project Sdk="Microsoft.NET.Sdk"> <PropertyGroup> <OutputType>Exe</OutputType> <TargetFramework>net10.0-windows</TargetFramework> <ImplicitUsings>enable</ImplicitUsings> <Nullable>enable</Nullable> <UseWPF>true</UseWPF> </PropertyGroup> <ItemGroup> <PackageReference Include="ABCpdf" Version="12.4.0.0" /> </ItemGroup> </Project>

System.Configuration.ConfigurationManager and System.IO.Packaging can be obtained as NuGet packages.

For PresentationCore and System.Drawing you just need to open the project properties and target Windows.

## Names

There are four public namespaces in ABCpdf. You can reference these using the following directives.

[C#]using WebSupergoo.ABCpdf14; using WebSupergoo.ABCpdf14.Objects; using WebSupergoo.ABCpdf14.Atoms; using WebSupergoo.ABCpdf14.Operations; The ABCpdf14 namespace contains the objects you will use for page layout. Most of the time, it is the only namespace you will need.

The Objects namespace allows you to access and manipulate content you've already added. You may use this namespace for complex operations in which the standard page layout functionality requires some modification.

The Atoms namespace allows you low level access to the raw PDF data structures. You are unlikely to use objects from this namespace unless you are writing very low level code.

The Operations namespace allows you to perform complex operations with multiple parameters and callbacks.

## Example

This is some simple example code. All it does is create a simple 'Hello World' PDF in the current working directory.

[C#]Doc doc = new Doc(); doc.AddText("Hello World!"); doc.Save("output.pdf");

## Security

ASP.NET operates under a restricted set of security permissions. It is quite common for the ASPNET user not to be able to create or write files.

So, if you want to save a PDF file from your ASP.NET code, it is quite likely that you will need to adjust the permissions on your destination directory to allow write access for the ASPNET user.

