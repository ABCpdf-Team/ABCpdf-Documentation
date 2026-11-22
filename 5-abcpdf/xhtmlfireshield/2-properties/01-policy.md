# Policy Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Enforcement` | Enforcement.None | No | File access enforcement for the worker process |

## Notes

File access enforcement for the worker process.

This property allows you to specify the type of action that should be taken if the HTML engine attempts to access a resource to which it is not allowed.

The Enforcement enumeration may take the following values:

- None - No enforcement of the access rules. Do not log any file paths.
- Deny - Prohibit access if the rules do not specify that access should be allowed. Always report an error if this happens. Log the file path via the [Log](03-log.md) property.
- Mask - Prohibit access if the rules do not specify that access should be allowed. Attempt to continue the operation without error. Do not log the file path.
- Log - If the rules do not specify that access should be allowed, allow it, but also log the file path via the [Log](03-log.md) property.
