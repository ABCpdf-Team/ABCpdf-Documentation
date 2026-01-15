# .NET Essentials

## Refs
You need to add a reference to ABCpdf from your Visual Studio project. Typically, reference the ABCpdf NuGet package: right-click Dependencies → Manage NuGet Packages… → Browse, search for "ABCpdf" and select it.

If you ran the full MSI installer on Windows (.NET Framework), ABCpdf may be in the GAC, so under .NET 4 you can add a reference from Reference Manager under Assemblies → Extensions. For .NET 5+ there is no GAC; prefer referencing the NuGet package.

If you are using .NET 8.0, your target may be `net8.0-windows`. For .NET 5+ use `netX.Y-windows` as appropriate. For .NET Framework, target `v4.0` or later.

The ABCpdf NuGet package ships with MSHTML and ABCChrome123 engines. To use ABCChrome117/86/65, add their respective NuGet packages. For ABCGecko and ABCWebKit, add `ABCGecko` and `ABCWebKit`. The MSI installer can install these engines too.

You can mix MSI and NuGet; the version you reference in your project is the one used. Be mindful of multiple versions to avoid confusion.

## Notes
Different project types require different setups.

If you see exceptions for `WindowsBase`, `ConfigurationManager`, `Packaging`, or `PresentationCore`:
- `WindowsBase` (WPF/XPS) requires targeting Windows and adding `UseWPF`.
- Add NuGet packages for `System.Configuration.ConfigurationManager` and `System.IO.Packaging`.
- Target Windows for `PresentationCore` and `System.Drawing`.

Add `UseWPF` manually in your `.csproj`:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net10.0-windows</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <UseWPF>true</UseWPF>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="ABCpdf" Version="12.4.0.0" />
  </ItemGroup>
</Project>
```

## Names
ABCpdf exposes four public namespaces. Reference them like:

[C#]
```csharp
using WebSupergoo.ABCpdf13;
using WebSupergoo.ABCpdf13.Objects;
using WebSupergoo.ABCpdf13.Atoms;
using WebSupergoo.ABCpdf13.Operations;
```

[Visual Basic]
```vbnet
Imports WebSupergoo.ABCpdf13
Imports WebSupergoo.ABCpdf13.Objects
Imports WebSupergoo.ABCpdf13.Atoms
Imports WebSupergoo.ABCpdf13.Operations
```

- `WebSupergoo.ABCpdf13`: page layout objects; usually all you need.
- `Objects`: access/manipulate content already added.
- `Atoms`: low-level raw PDF structures.
- `Operations`: complex operations with parameters and callbacks.

## Example
Simple Hello World PDF:

[C#]
```csharp
Doc doc = new Doc();
doc.AddText("Hello World!");
doc.Save("output.pdf");
```

[Visual Basic]
```vbnet
Dim doc As New Doc()
doc.AddText("Hello World!")
doc.Save("output.pdf")
```

## Security
ASP.NET often runs under restricted permissions. The ASPNET (or app pool) user may not be able to write files. If saving PDFs from ASP.NET, grant write permissions to the destination directory for the appropriate identity.