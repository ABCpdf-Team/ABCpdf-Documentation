# TextSpanIndex Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The zero based index of the drawing operator text array item that contains this fragment. For non text array operators this value is zero. |

## Notes

The zero based index of the drawing operator text array item that contains this fragment. For non text array operators this value is zero.

Each TextFragment spans a part of a PDF stream drawing operator. The part may be the entire of the text drawn by the operator or it may be a section of the text within that operator.

Some text drawing operators allow multiple items of text to be drawn. This provides a useful shorthand to allow character placement to be adjusted within a string. For example the following command will draw two items of text with a wide space (specified by the number) between the words.

```error
[ (Breaking) 4000 (Bad) ] TJ
```

Each TextFragment only corresponds to one of the strings within such an array. This property is a zero based index which tells you which one. For example in the above example, if the TextFragment corresponded to "Bad", then the TextSpanIndex would be equal to one.

For text drawing operations which do not involve arrays this value will always be zero.
