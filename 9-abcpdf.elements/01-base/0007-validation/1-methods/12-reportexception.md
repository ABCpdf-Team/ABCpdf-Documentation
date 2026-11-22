# ReportException Function

Called to report an Exception that was thrown during validation.

## Syntax

*C#*

`virtual void ReportException(`[`Element`](../../1086-element/index.md)` element, Exception ex)`

## Params

| Name | Description |
| :---: | --- |
| element | The [Element](../../1086-element/index.md) which was being processed. |
| ex | The Exception which was thrown. |

## Notes

Called to report an Exception that was thrown during validation.

In general you do not want the validation of one [Element](../../1086-element/index.md) to affect another.

So if an Exception is thrown during the validation of one [Element](../../1086-element/index.md), you want this to be reported, but then for validation to continue.

In the event that this happens, this function will be called.
