# UserUnit Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `double` | n/a | No | The size of default user space units. |

## Notes

The size of default user space units in multiples of a point.

This value must be greater than or equal to 1.0. If not provided the default of 1.0 is used.

This property represents a global scaling factor that multiplies the default coordinate system, where 1 unit normally equals 1/72 of an inch.

By default, this value is one, but increasing it makes every user-space unit represent a larger physical distance effectively scaling up the entire page and all its content without altering any of the underlying numeric coordinate values.

Its primary purpose is to bypass a hard limit in the PDF specification that restricts any page to a maximum of 14,400 user units (200 inches) in each direction, allowing specialized applications like CAD to create enormous drawings by using a small coordinate box paired with a large UserUnit multiplier.

While useful for large-format documents it is not a general-purpose zoom tool but rather a workaround for the PDF specifications page-size constraint and its use remains relatively niche.
