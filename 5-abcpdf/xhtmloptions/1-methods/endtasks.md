# EndTasks Method

Ends any HTML Engine worker threads or processes.

## Syntax

```csharp
int EndTasks(TaskState condition)
```

## Params

| Name | Description |
| :---: | --- |
| condition | The way in which to select threads or processes that should be ended. See the notes below for the possible values. |
| return | The number of selected threads or processes. |

## Notes

Use this method to end worker threads or processes for the [HTML Engine](../2-properties/1-engine.md). HTML Engine may be executed in separate threads or processes for isolation.

If condition specifies All, busy threads or processes will be ended immediately, and this may cause unexpected behavior in other threads of your application that depend on the busy threads or processes.

The TaskState enumeration may take the following values:

- None - No thread or process is selected.
- Idle - Idle threads or processes are selected.
- AllWhenBecomeIdle - All threads or processes are selected. Idle ones are ended immediately and busy ones are ended when they become idle.
- All - All threads or processes are selected.
