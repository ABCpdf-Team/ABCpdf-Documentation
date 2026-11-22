# Enabled Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether FireShield is enabled. |

## Notes

Whether FireShield is enabled.

Even when the [Policy](01-policy.md) is None FireShield is still loaded and enabled to allow rules to be changed without having to restart worker processes.

This property allows you to entirely disable FireShield. However in general you should prefer to simply set the Policy and leave FireShield enabled.
