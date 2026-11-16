# Application Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | ShellAssociation | No | The application used by ImportAny. |

## Notes

The application used by the import-any operation, see [ImportAny](1-methods/importany.md).

The ImportApplicationType enumeration may take the following values:

* ShellAssociation - This is the default value. The Shell will decide which application to use based on file association. The application that starts up when opening a file from the Windows explorer will also be used to do the conversion.
* MicrosoftWord - Microsoft Word will be used. If it is not installed an exception will be thrown.
* MicrosoftExcel - Microsoft Excel will be used. If it is not installed an exception will be thrown.
* MicrosoftPowerPoint - Microsoft PowerPoint will be used. If it is not installed an exception will be thrown.
* MicrosoftInfoPath - Microsoft InfoPath will be used. If it is not installed an exception will be thrown. Because only one process exists at any one time per user, the interactive user cannot use InfoPath if ABCpdf is importing InfoPath documents from an application running interactively. If the ABCpdf application runs from within a Windows service this limitation does not apply because a separate instance of InfoPath is created. However you cannot have multiple ABCpdf processes using InfoPath at the same time. A mutex has been implemented to prevent this. So only one InfoPath document at a time can be imported.
* MicrosoftOneNote - Microsoft OneNote will be used. If it is not installed an exception will be thrown. Because only one process instance exists at any one time per user, the same limitations apply, as described for InfoPath.
* MicrosoftPublisher - Microsoft Publisher will be used. If it is not installed an exception will be thrown.
* MicrosoftProject - Microsoft Project will be used. If it is not installed an exception will be thrown. Because only one process instance exists at any one time per user, the same limitations apply, as described for InfoPath.
* MicrosoftVisio - Microsoft Visio will be used. If it is not installed an exception will be thrown.
* MicrosoftOutlook - Microsoft Outlook will be used. If it is not installed an exception will be thrown. Because only one process instance exists at any one time per user, the same limitations apply, as described for InfoPath.

