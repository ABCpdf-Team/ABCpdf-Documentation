# IsInitialized Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `InitializationState` | Uninitialized | Yes | Gets the initialization state of the Python engine. |

## Notes

Gets the initialization state of the Python engine.

The InitializationState enumeration may take the following values:

- Uninitialized - The Python engine has not been initialized.
- Initializing - The Python engine is being initialized.
- Initialized - The Python engine has been initialized.
- ShuttingDown - The Python engine is being shut down.
