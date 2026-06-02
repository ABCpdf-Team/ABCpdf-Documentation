# CompressObjectsThreshold Property

## Notes

This property determines the threshold at which object stream compression should be applied.

Object stream compression can be very effective but there are two factors which need to be taken into account. The first is that not all objects are compressible and the second is that the object stream compression itself has a small overhead. As such, if there are few small objects that can be compressed, the overhead may be larger than the amount of space saved.

This property allows you to specify the minimum number of bytes of compressible data that are required before object stream compression is used. This setting will only be applied if the CompressObjects property is set to true. If it is set to false then object stream compression will never be used.

## Example

None.

