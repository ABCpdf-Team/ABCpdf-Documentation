# EndTasks Method

Ends any HTML Engine worker threads or processes.

## Syntax

```csharp
int EndTasks(TaskState condition)
```

## Params

| Name | Description |
| --- | --- |
| condition | The way in which to select threads or processes that should be ended. The TaskState enumeration may take the following values: None — no thread or process is selected. Idle — idle threads or processes are selected. AllWhenBecomeIdle — all threads or processes are selected, and to busy threads or processes, the operation is applied only when they become idle. All — all threads or processes are selected. |
| return | The number of selected threads or processes. |

## Notes

Use this method to end worker threads or processes for the HTML Engine. HTML Engine may be executed in separate threads or processes for isolation.

If condition specifies All, busy threads or processes will be ended immediately, and this may cause unexpected behavior in other threads of your application that depend on the busy threads or processes.

