# ABCpdf on Linux

## Intro
ABCpdf is typically designed and developed on Windows, then deployed on Linux or Windows.

## Basics
- Use Ubuntu 22.04 or 24.04.
- WSL: use WSL 2; WSL 1 is not supported.
- Linux has fewer fonts by default; install fonts under `/usr/local/share/fonts`, `/usr/share/fonts`, or `~/.local/share/fonts`.
- Config is on the file system. Select a config file via `XSettings.SetConfigFile`. Temp files under `/tmp/ABCpdf`.

## Docker
Docker examples are available on GitHub, including a microservice template based on Ubuntu 22.04 LTS that supports in-container debugging in Visual Studio 2022+: https://github.com/ABCpdf-Team/APCpdfLinuxContainer

## Licenses
No trial licenses are created on Linux; set a license in code at startup using `XSettings.InstallLicense` with a trial or purchased key. Trial keys can be copied from the PDFSettings app on Windows (full MSI install).

## .NET Install
Linux does not include .NET by default. If you publish with `--self-contained false` without runtime installed, you’ll see an error like:

```
You must install .NET to run this application.
App: /home/pcuser/helloworld/helloworld
Architecture: x64
App host version: 6.0.22
.NET location: Not found
```

Publishing self-contained is an alternative (adds ~60 MB). To install runtime, see Microsoft docs:

```
sudo apt update
sudo apt install dotnet-runtime-8.0
```

If using ABCChrome, install extra packages:

Ubuntu 22 & 23:
```
sudo apt install -y libasound2 libnss3 libcurl4
```
Ubuntu 24:
```
sudo apt install -y libasound2t64 libnss3 libcurl4t64
```
Ubuntu 22 only:
```
sudo apt install -y xserver-xorg-core --no-install-recommends --no-install-suggests
sudo apt install -y libcairo2 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxcomposite1 libxdamage1 libxrandr2 libxkbcommon0 libpango-1.0-0
```

Debian 12.7 (not officially supported):
```
sudo apt install -y libasound2 libnss3 libcurl4
sudo apt install -y xserver-xorg-core --no-install-recommends --no-install-suggests
sudo apt install -y libcairo2 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxcomposite1 libxdamage1 libxrandr2 libxkbcommon0 libpango-1.0-0
sudo apt install -y libglib2.0-0
```

Fedora 40 (not officially supported):
```
sudo dnf install -y alsa-lib mesa-libgbm cairo atk at-spi2-atk cups-libs libXcomposite libXdamage libXrandr pango
```

Use `ldd` on relevant `.so` libraries and HTML engine executables to spot missing dependencies.

## WSL
WSL 2 is required. Accessing files across OS boundaries can be slow (e.g., checksums for large files). WSL 1 lacks necessary features (file locking, memory mapping), leading to subtle issues; thus not supported.

## NuGet
The `ABCpdf` NuGet package contains core libraries for Windows and Linux. It includes ABCChrome for Windows, not Linux (size). To use ABCChrome on Linux, add `ABCpdf.ABCChrome123.Linux` alongside `ABCpdf`.

## Deployment
Publish to Linux from Windows using a Developer Command Prompt. Example:

```
dotnet publish helloworld.csproj -r linux-x64 -c Release --self-contained false --output \\wsl.localhost\Ubuntu\home\pcuser\helloworld
```

Then mark executables:

```
cd ~/helloworld
sudo chmod +x helloworld
sudo chmod +x ABCChrome123/ABCChrome123 # if using ABCChrome
./helloworld
```

## Features
Differences on Linux (legacy/Windows-specific features not present):
- Supported platforms: .NET 6.0+ on x64.
- Available HTML engines: ABCChrome123 and ABCChrome117.
- FireShield not available.
- Read modules not available: XpsAny, MSOffice, OpenOffice, RichTextFormat, EmfVector.
- Exports relying on WIC codecs (dds, heic, heif, jxr, wdp) not supported.
- EMF import/export not supported.
- Fonts differ; substitutions vary.
- Subtle differences in character positioning and bidirectional text layout.
- `TextOperation.ShowClippedText` not functional.
- 3D annotations are not rendered; appearances not generated.
- WebGL export/embedded graphics not supported.
- `System.Drawing` APIs unavailable.
- `.so` libraries are not signed.
- .NET crypto differs; some signature operations may fail.
- Exceptions may differ due to OS differences.

HTML conversion differences (Windows vs Linux):
- Form text field widths may vary slightly.
- Invalid SSL certificates cannot be converted.
- Images added directly (not via HTML) may appear at different sizes.