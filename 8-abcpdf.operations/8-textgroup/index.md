# TextGroup Class

A group of text fragments that belong together.

The essence of a TextFragment is that it spans only a small section of text. As such it may be necessary to group fragments together. For example take the following PDF drawing instruction sequence:

```
[ (There) 400 (was) 400 (Eru,) 300 (the One) ] TJ
```

This sequence will write out the text "There was Eru, the One". There are no space characters here and the spacing is indicated by character placement (the numbers) instead.

[Selecting](../8-textoperation/1-methods/select.md) the phrase "was Eru" will result in two TextFragments the first of which will correspond to "was" and the second to "Eru". The two [TextFragment.Rect](../8-textfragment/2-properties/rect.md) properties are not connected because there is a 400 wide gap between them. Also there is no space character so simply concatenating the text in the fragments would result in "wasEru".

Using the [TextOperation.Group](../8-textoperation/1-methods/group.md) method will group them into one TextGroup with the [Text](2-properties/text.md) "was Eru" (space inserted) and a [Rect](2-properties/rect.md) corresponding to the complete selected phrase.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.TextGroup
```

## Methods

| Method | Description |
| :---: | --- |
| none |  |

## Properties

| Property | Description |
| --- | --- |
| [PageID](2-properties/pageid.md) | The ID of the Page on which this group is located. |
| [Rect](2-properties/rect.md) | The rectangle that contains the group. |
| [Text](2-properties/text.md) | The text of the group. |
| [TextFragments](2-properties/textfragments.md) | The text fragments in the group. |
