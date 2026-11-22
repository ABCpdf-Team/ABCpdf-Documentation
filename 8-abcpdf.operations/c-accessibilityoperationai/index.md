# AccessibilityOperationAI Class

Operation to tag documents using Python and Docling.

You will need to install Python and Docling to use this class.

When running in Microsoft Windows, do not use the Python app from the Microsoft Store because apps there are protected by security so that other processes cannot access them.

Instead you can download the Python Install Manager from the Python web site and then use it to install Python 3.14 - our recommended release - by calling "py install 3.14". After installation you can install Docling by calling "py install docling".

On Linux you want to first install python-pip using "sudo apt install python3-pip". Then you can install Docling using "python3 -m pip install docling". To upgrade Docling to a newer version, run "python -m pip install --upgrade docling".

```
System.Object
   WebSupergoo.ABCpdf14.Operations.AccessibilityOperationAI
```

## Methods

| Method | Description |
| --- | --- |
| [Tag](1-methods/01-tag.md) | Tags a PDF document. |

## Properties

| Property | Description |
| --- | --- |
| [ConversionOptions](2-properties/01-conversionoptions.md) | A Python expression that will be evaluated to be used as options for the conversion. |
| [KeepTags](2-properties/02-keeptags.md) | Gets or sets whether existing tags in the document are kept. |
| [TaggedPageNumbers](2-properties/03-taggedpagenumbers.md) | Gets a read-only list of page numbers of pages where tags are to be added. |
