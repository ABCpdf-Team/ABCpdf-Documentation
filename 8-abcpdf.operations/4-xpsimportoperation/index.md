# XpsImportOperation Class

An operation used to import XPS and OXPS documents.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Operations.Operation`](../1-operation/index.md)  
`       WebSupergoo.ABCpdf14.Operations.XpsImportOperation`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [GetApplicationFolder](1-methods/getapplicationfolder.md) | Gets the installation folder of an import application. |
| [XpsImportOperation](1-methods/1-xpsimportoperation.md) | XpsImportOperation Constructor. |
| [ApplicationIsRunning](1-methods/applicationisrunning.md) | Gets a value indicating whether an import application is running for this XpsImportOperation. |
| [EnableApplicationReuse](1-methods/enableapplicationreuse.md) | Enables an import application process to be reused so that it is terminated only manually or when this operation is disposed of. |
| ⚠ [Import](1-methods/import.md) | Imports a portion of an XPS document. |
| [ImportAny](1-methods/importany.md) | Imports a portion of a document via an intermediate XPS print-out. |
| [KillApplication](1-methods/killapplication.md) | Terminates a running import application. |
| [ReusesApplication](1-methods/reusesapplication.md) | Gets a value indicating whether an import application process is to be kept running and reused. |

## Properties

| Property | Description |
| --- | --- |
| [AddAnnotations](2-properties/addannotations.md) | The types of annotations to be added. |
| [BoldWidth](2-properties/boldwidth.md) | The percentage of boldness to apply when creating a synthetic bold style. |
| [Application](2-properties/application.md) | The application used by ImportAny. |
| [ApplicationFolder](2-properties/applicationfolder.md) | The folder of the application used by ImportAny. |
| [DocNumber](2-properties/docnumber.md) | The one-based document number used by ImportAny. |
| [EnableMSOfficeMacros](2-properties/enablemsofficemacros.md) | Whether to enable macros when opening MS Office documents. |
| [Password](2-properties/password.md) | The password needed to read the source. |
