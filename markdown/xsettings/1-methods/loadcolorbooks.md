# LoadColorBooks Method

Load color books for use when rendering spot color images.

## Syntax

```csharp
void LoadColorBooks(string path)
```

## Params

| Name | Description |
| --- | --- |
| path | The file to load or directory to scan. |
| return | None. |

## Notes

Adobe Photoshop multichannel PSD files sometimes reference named spot colors that are defined in color books

Without the original color book it is not possible to convert these images accurately because the name of a color does not tell you what it looks like. The only way to know is to find the original color book and use the information that is found there.

ABCpdf will attempt to locate  color books on your system but you can provide it with help by calling this function. Pass in either a path to a file you would like to load, or a path to a directory of files that you would like to load. The named colors are held on a global basis so there is no need to repeat the call unless the files change.

ABCpdf currently supports color books in .acb - Adobe Color Book format.

