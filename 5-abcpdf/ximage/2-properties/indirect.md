# Indirect Property

## Notes

This property tells you whether the image will be added using indirect mode.

The name of this property is related to how the XImage object used to work and so it is no longer very meaningful.

So, ignoring the name, the core function of this property is to tell you whether you can use the Selection property and SetMask method.

This property is false for EPS and PS image types. It is false for EMF or WMF files imported using the EmfVector ReadModule. In all other cases it is true.

## Example

None.

