# StdErrCallback Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Action<string>` | null | No | Gets or sets the delegate to receive text written to sys.stderr. |

## Notes

Gets or sets the delegate to receive text written to sys.stderr.

This takes precedence over [StdErr](05-stderr.md) and [StdErrWriter](07-stderrwriter.md) if not null.
