# DisposeOfCallback Method

Disposes of a delegate used to create a JavaScript function.

## Syntax

```csharp
void DisposeOfCallback(Func<JSCallInfo, object> func)
```

## Params

| Name | Description |
| :---: | --- |
| func | A delegate used to create a JavaScript function. |

## Notes

Delegates need to be kept alive while the native code may call them. Additionally, a managed API is provided to access the parameters from the native code, so the native code does not call the delegates directly. Therefore, all delegates for which a JavaScript function is created are maintained by the JavaScript context. If your code creates JavaScript functions (including property accessors) for tens of thousands (or more) of distinct delegates (in the sense of reference equality), you may need to dispose of delegates that are no longer callable from JavaScript code.

Your code does not need to call this method if it creates only a small number of JavaScript functions using managed delegates. Delegates that are disposed of in this way can later be used to create new JavaScript functions.

Do not dispose of delegates that are still callable from JavaScript code.
