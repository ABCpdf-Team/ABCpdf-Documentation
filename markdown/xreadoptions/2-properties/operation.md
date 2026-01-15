# Operation Property

&nbsp;

## Notes

This property is used by modules for which a suitable derived class of Operation exists. If it is null, those modules create a temporary Operation with default behaviours.

ReadModule Operation Description

SwfVector SwfImportOperation If this property is null, the temporary SwfImportOperation has its Timeout set to Timeout and sets ProcessingObjectEventArgs.Info.FrameNumber to Frame once.

Xps XpsImportOperation If this property is null, the temporary XpsImportOperation compresses the GraphicLayer's of the pages.

XpsAny XpsImportOperation If this property is null, the temporary XpsImportOperation compresses the GraphicLayer's of the pages.

