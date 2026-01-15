# Upgrading

## Basics
ABCpdf 13 is independent from previous versions and includes namespaces for ABCpdf2 through ABCpdf12 so you can upgrade with minimal changes. To use new features, reference the new namespace.

Replace:

[C#]
```csharp
using WebSupergoo.ABCpdf12;
```

[Visual Basic]
```vbnet
Imports WebSupergoo.ABCpdf12
```

with:

[C#]
```csharp
using WebSupergoo.ABCpdf13;
```

[Visual Basic]
```vbnet
Imports WebSupergoo.ABCpdf13
```

## Changes
ABCpdf is backward compatible; core engine changes are validated for compatibility.

Notable differences:
- Default HTML engine is now ABCChrome123 (faster, more compliant, more secure). If you rely on older engine output (e.g., Chrome86), set it explicitly after creating `Doc`, after `Doc.Read`, and after `Doc.Clear`:

[C#]
```csharp
doc.HtmlOptions.Engine = EngineType.Chrome86;
```

[Visual Basic]
```vbnet
doc.HtmlOptions.Engine = EngineType.Chrome86
```

- FireShield has expanded capabilities; custom rules may need updates to ignore newly intercepted events.
- Disposed objects: some properties now return defaults rather than throw, improving debugger experience (e.g., `XEncryption.StreamCryptionMethod`, `StringCryptionMethod`).
- `app.config` preferences: Version 12 used `<ABCpdf12.Section>`, Version 13 uses `<ABCpdf13>`. CamelCase entries are handled for compatibility; lower-case preferred. See `XSettings.SetConfigFile`.