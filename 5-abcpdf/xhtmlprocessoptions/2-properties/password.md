# Password Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `SecureString` | null | No | The password for the user. |

## Notes

This specifies the password for the user for new worker processes.

The SecureString must not be disposed of while the process pool is not stopped.
