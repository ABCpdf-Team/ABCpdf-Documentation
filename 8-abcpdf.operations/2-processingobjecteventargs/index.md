# ProcessingObjectEventArgs Class

Provides data for the [ProcessingObject](../1-operation/3-events/1-processingobject.md) event.

This class inherits from the CancelEventArgs class to allow processing of the operation to be cancelled.

```
System.Object
   System.EventArgs
      System.ComponentModel.CancelEventArgs
          WebSupergoo.ABCpdf14.Operations.ProcessingObjectEventArgs
```

## Methods

| Method | Description |
| --- | --- |
| [ProcessingObjectEventArgs](1-methods/1-processingobjecteventargs.md) | ProcessingObjectEventArgs Constructor. |

## Properties

| Property | Description |
| --- | --- |
| [Object](2-properties/object.md) | Gets the IndirectObject to be processed. |
| [Tag](2-properties/tag.md) | Gets or sets an object which can be used to save data about the event. |
| [Info](2-properties/info.md) | Gets the ProcessingInfo containing related information. |
