# Item(int index) Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `T` | null | No | Gets or sets the [Element](../../1086-element/index.md) at the specified index. |

⚠ `ArgumentOutOfRangeException: Thrown if the index provided is not valid.`⚠ `NullReferenceException: Thrown if an attempt is made to assign a null value in a non-`[`Nullable`](03-nullable.md)` array.`

## Notes

Gets or sets the [Element](../../1086-element/index.md) at the specified index. In C# this property is the indexer for the class.

The Item property is used to access [Elements](../../1086-element/index.md) within the Array.

The ArrayAtom is accessed and used to create an [Element](../../1086-element/index.md) of type T.

In the case that T has multiple sub-types, default factories will result in an item of the correct subtype being created.

The precise factory that should be used is determined at the point the [ArrayElement](../index.md) is assigned to a property of another [Element](../../1086-element/index.md).

So since different properties may use different factories, you should not share one [ArrayElement](../index.md) between more than one property.

Most [ArrayElements](../index.md) cannot hold null values in a meaningful way. So in general, if you provide a null value this will result in an exception being raised.

Occasionally it is appropriate for [ArrayElements](../index.md) to hold null values represented as NullAtoms. You can indicate this is acceptable, by setting the [Nullable](03-nullable.md) property.
