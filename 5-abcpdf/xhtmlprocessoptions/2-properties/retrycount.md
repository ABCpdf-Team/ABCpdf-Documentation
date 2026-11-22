# RetryCount Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 3 | No | The number of times an operation should be retried if there is a problem with the process. |

## Notes

The problems concerned are not related to a page's content.

The process pool manages the communication with the processes. If the communication is problematic or a process becomes unstable, the process is terminated and a retry may take place.
