# What do I need to use it?

On Windows, you can run ABCpdf .NET on all Windows versions since Windows Vista. You need .NET Framework 4.0 or later, or .NET 5 or later.

On Linux, you need Ubuntu 26.04, 24.04 or 22.04 on x64, with .NET 6 or later. WSL 2 is supported, but WSL 1 is not. A few Windows-specific features, such as Microsoft Office conversion, FireShield and System.Drawing, aren't available on Linux. See ABCpdf on Linux for the full list.

The easiest way to add ABCpdf to a project is the ABCpdf NuGet package. Alternatively you can run the full MSI installer on Windows.

If you're rendering 3D PDFs on Windows, you will need OpenGL version 3.1 compliant graphics drivers.

Finally, you'll need ABCpdf .NET itself.

What happened to ABCpdf ASP? Well, ABCpdf .NET includes a COM layer over the native .NET base - a layer which exactly mimics the interface of ABCpdf ASP. This means you can use one product for your .NET deployment and also for any legacy COM deployment. Think of it as double value - ABCpdf .NET and ABCpdf ASP both in one package. Plus, you get the advantages of the .NET architecture behind a COM front end - advantages like native x64 support and features like SVG import.

