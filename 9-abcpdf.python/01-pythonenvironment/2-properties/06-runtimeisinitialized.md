# RuntimeIsInitialized Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `RuntimeInitializationState` | Uninitialized | No | Gets or sets the initialization state of the Python runtime. |

## Notes

Gets or sets the initialization state of the Python runtime.

The RuntimeInitializationState enumeration may take the following values:

- Uninitialized - The Python runtime has not been initialized.
- AutoInitialized - The Python runtime has been initialized with automatic conversion to delegates.
- UserInitialized - The Python runtime has been initialized by user.
