# EntryPCM Property

## Notes

Represents the "PCM" entry of the trap network appearance stream object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

DeviceGrayDeviceRGBDeviceCMYKDeviceCMYDeviceRGBKDeviceN

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 367, page 638.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 404, page 821.

The PCM entry names the process color model assumed when traps were generated, such as DeviceCMYK. A change in the document color model requires the trap network to be regenerated.
