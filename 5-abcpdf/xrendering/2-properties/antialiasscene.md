# AntiAliasScene Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to apply entire scene anti-aliasing. |

## Notes

Determines whether to apply entire scene anti-aliasing.

If this property is set to true then text, polygons and images will be anti-aliased together instead of individually. This uses considerably more memory and takes considerably longer but can result in higher quality output.

When this property is set to true this implicitly disables any other anti-aliasing applied to individual object types.

Anti-aliasing is a technique for using gradients of color to eliminate jagged edges when objects are drawn.
