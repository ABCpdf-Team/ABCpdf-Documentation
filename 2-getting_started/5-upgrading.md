# Upgrading

## Basics

ABCpdf 14 is a new version completely independent of the old. It incorporates the ABCpdf2, ABCpdf3, ABCpdf4, ABCpdf5, ABCpdf6, ABCpdf7, ABCpdf8, ABCpdf9, ABCpdf10, ABCpdf11, ABCpdf12 and ABCpdf13 namespaces so that you can upgrade with minimal changes to your code. When you want to take advantage of the new features, simply reference the new name.

Simply replace...

```csharp
using WebSupergoo.ABCpdf13;
```

with...

```csharp
using WebSupergoo.ABCpdf14;
```

## Changes

ABCpdf is fully backward compatible. Although extensive changes have been made to the core engine, we check that these changes produce results that are compatible with previous versions.

There are some minor differences in behavior between the ABCpdf13 and ABCpdf14 namespaces.

The new ABCChrome146 HTML conversion engine is our new default as it is faster, more compliant and more secure than the previous one. If your HTML conversions rely on specific output styles created by the previous default engines - eg ABCChrome86 - you will want to use the following line of code after creating any Doc object, after calling Doc.Read and after calling Doc.Clear.

```csharp
doc.HtmlOptions.Engine = EngineType.Chrome86;
```

The [XSettings.InstallLicense](../5-abcpdf/xsettings/1-methods/installlicense.md), [XSettings.InstallRedistributionLicense](../5-abcpdf/xsettings/1-methods/installredistributionlicense.md), [XSettings.InstallSystemLicense](../5-abcpdf/xsettings/1-methods/installsystemlicense.md) and [XSettings.InstallTrialLicense](../5-abcpdf/xsettings/1-methods/installtriallicense.md) now throw an exception in the case of failure. We changed the behavior here, as many clients were not checking the return value and so any license installation failures would fail silently. If you are relying on the old behavior there are overloads which take a boolean throwOnFailure property which you can set to false.

The [Doc.SaveOptions.Compact](../5-abcpdf/xsaveoptions/2-properties/compact.md) property automatically reduces PDF file size by flattening page contents. However if you save IDs from content addition methods like [Doc.AddText](../5-abcpdf/doc/1-methods/addtext.md), then call [Doc.Save](../5-abcpdf/doc/1-methods/save.md) then use those IDs to reference the content items, you will wish to disable it because flattening invalidates those IDs. This need is uncommon, so the default works perfectly in most cases.

The [XReadOptions.DefaultRect](../5-abcpdf/xreadoptions/2-properties/defaultrect.md) property previously had nonstandard behavior: setting it to null would insert a default sized rectangle instead of remaining null. This has now been fixed to behave as developers expect, so setting it to null actually makes it null.

When using ABCpdf to import Flash or SWF files we now prefer our custom SwfVector [ReadModule](../5-abcpdf/xreadoptions/2-properties/1-readmodule.md). If you want to use the old native Flash module instead you can select it by specifying the FlashNative ReadModule which reverts to the legacy Adobe dependent parser.

Object stream compression was previously disabled by default. It is now enabled, delivering leaner PDFs by grouping many small objects into a single compressed stream. However if you must comply with legacy standards like PDF/A-1 (which predates object streams) or rely on older or homegrown tools that cannot parse compressed object structures, you may wish to set the [Doc.SaveOptions.CompressObjects](../5-abcpdf/xsaveoptions/2-properties/compressobjects.md) property to false.

Most developers will be unaware of the PDFException class since it has always been carefully hidden from view. However if you have uncovered it then you should be aware of some changes. PDFException now inherits from Exception rather than from AppException so if your code catches AppException you may need to update your exception handlers. We also now throw standard .NET exceptions (e.g. ArgumentNullException) in many cases instead of PDFException. Do not rely on PDFException being thrown for specific errors – check your exception handling logic. To ease migration you can set PDFException.Prefer to true to revert to the legacy behavior.
