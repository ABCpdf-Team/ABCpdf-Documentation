# SetCryptMethods Function

Here we use 128-bit AES encryption.

## Syntax

```csharp
void SetCryptMethods(CryptMethodType method)
void SetCryptMethods(CryptMethodType stringMethod, CryptMethodType streamMethod)
```

## Params

| Name | Description |
| --- | --- |
| method | The crypt method for strings and streams. |
| stringMethod | The crypt method for strings. |
| streamMethod | The crypt method for streams. |

## Notes

The default crypt method for Type 4 is V2, which uses RC4 algorithm. Crypt method settings are in effect only when Type is 4 or above.

The CryptMethodType enumeration can take any of the following values:

None – (Not supported.) An exception is thrown when it is used. Identity – No encryption. V2 – Uses the RC4 algorithm. AESV2 – Uses the AES algorithm with 128-bit encryption keys. AESV3 – Uses the AES algorithm with 256-bit encryption keys.

Because Adobe Reader does not support using more than one crypt methods per document (i.e. stringMethod≠streamMethod), an exception is thrown if you try to use multiple crypt methods. However, Identity is degenerate and can be used with other crypt methods.

The PDF 2.0 standard deprecates a number of these options as being potentially insecure. The recommended set for PDF 2.0 compliant documents is Type 5 with SetCryptMethods AESV3.

## Example

Here we use 128-bit AES encryption.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
doc.AddText("Hello World!");
doc.Encryption.Type = 5;
doc.Encryption.SetCryptMethods(CryptMethodType.AESV3);
doc.Save(Server.MapPath("setcryptmethods.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

