# IdleTimeout Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `long?` | 600,000 (10 minutes) | No | The maximum time a process can be idle before being terminated (ms). |

## Notes

Set this property to null to specify infinity.

After a process has been idle continuously for the specified time, the process shall be terminated.
