# StdOutCallback Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Action<string>` | null | No | Gets or sets the delegate to receive text written to sys.stdout. |

## Notes

Gets or sets the delegate to receive text written to sys.stdout.

This takes precedence over [StdOut](04-stdout.md) and [StdOutWriter](06-stdoutwriter.md) if not null.
