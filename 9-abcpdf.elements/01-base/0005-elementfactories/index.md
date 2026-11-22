# ElementFactories Class

Class ElementFactories.

This static class contains a set of static factory methods for creating Elements.

The reason you may need a factory method is because you may not know the type of Element you want to create at compile time.

For example documents often contain annotations which float over the page. Each type of annotation is represented by a different type of Elemment.

However, until you read the document, you will not know if those annotations are stamps or lines or fields or any other type of annotation.

Using a factory method allows the structure of the object to be examined and a sensible Element type allocated to it.

Different factory methods are appropriate at different times. For example the creation of annotations may require a different logic to the creation of actions.

```
System.Object
    WebSupergoo.ABCpdf14.Elements.ElementFactories
```

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [AutodetectFactory](1-methods/01-autodetectfactory.md) | Autodetect Factory. |

## Properties

| Property | Description |
| :---: | --- |
