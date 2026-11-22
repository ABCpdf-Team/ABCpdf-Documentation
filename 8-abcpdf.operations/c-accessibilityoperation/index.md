# AccessibilityOperation Class

Operation to make a document accessible.

Accessible or Tagged PDFs are the same as normal PDFs but have been annotated with metadata in the form of PDF tags. This metadata is required because PDF documents contain good layout information but little semantic structure. The tags that are required supply this semantic structure. The way they are inserted and operate is defined in the Adobe PDF Specification.

See the [MakeAccessible](1-methods/makeaccessible.md) function for further information on accessibility standards and tagged PDF.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.AccessibilityOperation
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [AccessibilityOperation](1-methods/1-accessibilityoperation.md) | AccessibilityOperation Constructor. |
| ⚠ [MakeAccessible](1-methods/makeaccessible.md) | Tags the document for accessibility. |

## Properties

| Property | Description |
| --- | --- |
| [PageContents](2-properties/pagecontents.md) | The pages to be operated upon. |
| [ActualText](2-properties/actualtext.md) | Whether to embed the actual text of text elements. |
| [FixFonts](2-properties/fixfonts.md) | Whether to attempt to fix font settings that may be required for accessibility. |
| [FixMetadata](2-properties/fixmetadata.md) | Whether to attempt to fix or add metadata that may be required for accessibility. |
| [FindHeaders](2-properties/findheaders.md) | Whether to detect and remove page headers. |
| [FindFooters](2-properties/findfooters.md) | Whether to detect and remove page footers. |
| [FindLists](2-properties/findlists.md) | Whether to detect and insert ordered and unordered list structures. |
| [FindStructure](2-properties/findstructure.md) | Whether to detect and insert structure outline. |
| [FindTables](2-properties/findtables.md) | Whether to detect and insert table structures. |
| [IncludeArtifactText](2-properties/includeartifacttext.md) | Whether to include text that is already marked as an artifact. |
| [Layout](2-properties/layout.md) | The method that should be used for determining paragraph order. |
