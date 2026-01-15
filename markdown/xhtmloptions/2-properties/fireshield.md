# FireShield Property

&nbsp;

## Notes

This proprerty determines the  security settings which should be applied to HTML conversion using the ABCChrome engine.

The problem with most sandboxes is they are not sufficiently dynamic. You may want to allow access to a specific file or set of files for one request, while prohibiting acces to those same files for another.

FireSheld allows you to configure per-request permissions   using an easy to understand rule based system. It reports permission issues in an obvious way so that if you need to troubleshoot access problems, it is trivial to work out what is going wrong.

## Example

The following code snippet illustrates how one might add a rule to allow access to an audio driver or similar.

```csharp
using var doc = new Doc();
doc.HtmlOptions.Engine = EngineType.Chrome123;
doc.HtmlOptions.FireShield.Rules.Add(new XHtmlFireShield.PathRule(@"C:\Windows\*.drv", XHtmlFireShield.PathRule.AccessType.Allow));
int id = doc.AddImageUrl("https://www.google.com/");
// ...
```

