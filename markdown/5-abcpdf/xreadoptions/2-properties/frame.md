# Frame 
Property

&nbsp;

## Notes

This property is used by read modules that support frames or sub-documents.

Frames are numbered from one upwards. The default of zero indicates that a default frame or frame set should be used.

The SwfVector  module uses this property when the Operation is null. When this occurs a temporary SwfImportOperation is created and the ProcessingObjectEventArgs.Info.FrameNumber is set to the value of this property. The default behavior is to read frame one.

The MSOffice  module uses this property to allow you to read individual worksheets from within an Excel spreadsheet. The default behavior is to read all the worksheets in order rather than simply select one of them.

