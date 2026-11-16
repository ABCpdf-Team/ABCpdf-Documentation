# ImportAny Function

Imports a portion of a document via an intermediate XPS 
            print-out.

## Syntax

[C#]

```csharp
void ImportAny(Doc doc, string path)void ImportAny(Doc doc, string path, int timeout)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | The target PDF document. |
| path | The file path to the source document. |
| timeout | The timeout in milliseconds for the XPS printer driver. The default is 15500 milliseconds. |

## Notes

Imports several types of documents, by converting them to XPS first using the Microsoft XPS Document Writer (MXDW). An attempt is made to silently print the document to a temporary XPS file. An application which will print the document is launched. This application is intercepted and, assuming that only the default Print dialogs are used, the XPS print output is silently captured. This output is then imported into PDF just like any other XPS file.

You can refer to [Application](2-properties/application.md) for a list of supported applications. This property also determines which application will be used to print the document to XPS.

By default the shell default program will be used. To set the shell default program for a file, in Windows Explorer, right-click on the file, select "Open With" and then "Choose Default Program". When the shell default program is used, there must be a "Print" option when right-clicking on the document in Windows Explorer. If this is not the case, ImportAny will fail except for the following applications: MS Word, MS Excel, MS PowerPoint, MS InfoPath and MS Project.

If you prefer not to rely on the shell default program, set [Application](2-properties/application.md) to any of the applications defined in ImportAnyApplicationType. These applications are officially supported by ImportAny. You may try your luck with other applications, but in this case you must associate your application via the shell default program.

The Microsoft XPS Document Writer (MXDW) must also be available. This is the default on Windows Vista. For Windows XP, you can download MXDW at this address: http://msdn.microsoft.com/en-us/library/dd183313(VS.85).aspx.

When ImportAny fails, the associated application will likely hang, normally waiting for a "Print" dialog of some sort to be closed, but this dialog is hidden by ImportAny so you will not see it. If this is the case, ImportAny will wait for the specified timeout before killing the associated application and reporting an error. The default timeout is 15.5 seconds. You can reduce or increase this value depending on your requirements, by using the overload that accepts a timeout as a parameter.

When using ImportAny from either a Windows Service or an IIS process, it is recommended that you wrap ABCpdf into a COM+ application. Refer to the PdfEnterpriseServices example in order to do this.

You may debug ImportAny problems using the PrintHookShow and PrintHookLog registry keys. For further details see the [Registry Keys](3-concepts/d-registrykeys.md) section in Concepts.

## Example

The usage of ImportAny is identical to [Import](import.md) except that it takes any file format whose associated application supports the "Print" option.
