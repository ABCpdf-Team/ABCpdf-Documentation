# ValidationStackNode Class

StackNode class.

Validation is a recursive process. One Element validates each of its child Elements. Each of those in turn validate their children.

In the event that an inconsistency is found, it useful to know how the current Element was arrived at.

The Stack consists of a sequence of ValidationStackNode.

Each node indicates the state of validation at the point at which a child element was asked to validate itself.

There may be apparent duplicates on the stack as sub-classes may result in multiple calls to the Start function.

```
System.Object
    WebSupergoo.ABCpdf14.Elements.ValidationStackNode
```

## Methods

| Method | Description |
| --- | --- |
| [ValidationStackNode](1-methods/01-validationstacknode.md) | Initializes a new instance of the ValidationStackNode class. |

## Properties

| Property | Description |
| --- | --- |
| [Element](2-properties/01-element.md) | Gets the element to which this node refers. |
| [Entry](2-properties/02-entry.md) | Gets or sets the entry - the DictAtom key - which represents the current item being validated. |
| [Index](2-properties/03-index.md) | Gets or sets the item - the ArrayAtom index - which represents the current item being validated. |
