# Access Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `AccessType` | null | No | The type of control to exercise over the resource. |

## Notes

The type of control to exercise over the resource.

The AccessType enumeration may take the following values:

- Allow - Allow full access to the resource.
- Deny - Do not allow any access to the resource.
- Read - Allow read only access to the resource.
- Mask - Prohibit access by behaving as if the resource did not exist. Masked files will never be logged.
