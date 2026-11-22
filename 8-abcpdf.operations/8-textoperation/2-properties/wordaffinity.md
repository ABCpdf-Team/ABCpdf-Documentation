# WordAffinity Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `double` | 0.15 | No | The minimum distance at which two fragments will be assumed to be part of one undivided word. |

## Notes

The minimum distance at which two text fragments will be assumed to be part of one undivided word. This value is specified in terms of a fraction of the font size.

PDF text does not always include spaces. It is not uncommon for spaces simply to be indicated by the positions at which characters are drawn. The fact that two text fragments are drawn some distance from each other visually indicates that there is a space between them. When extracting text from a PDF one needs to decide how far apart text fragments can be, before one assumes that they should be separated by a space.

This property allows you to control this spacing. Increasing the property will tend to reduce the cohesiveness of fragments resulting in fewer spaces. Decreasing it will tend to increase the cohesiveness resulting in more spaces.

Broadly speaking the property is defined as the proportion of the font size at which distance a space will be assumed to be present. The precise mechanism is a little more complicated than this as it needs to take account of vertical distance and of varying font sizes between fragments. However for most purposes the broad definition will be acceptable.
