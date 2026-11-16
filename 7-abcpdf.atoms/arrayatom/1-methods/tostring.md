# ToString Function

The string representation of the ArrayAtom as it would appear in a 
            PDF.

## Syntax

[C#]

```csharp
string ToString(string format)
```

## Params

| **Name** | **Description** |
| --- | --- |
| format | The format which should be used for the conversion. |
| return | The string representation of the object. |

## Notes

This function derives the content of the object as it will be inserted into the final PDF document.

There are many ways in which a string may be represented. The format string allows more control over how this is done.

The following options may be used in combination.

* nXX - the number of items per line where XX is the number required

If format options are not specified then ABCpdf will select a sensible set depending on context.

The number of items per line, determines how many array items will be written on one line. If the number is less than or equal to zero then ABCpdf will dynamically determine an appropriate number of items to be written. Note that items may themselves be ArrayAtom or DictAtom so they may contain their own line breaks.

## Example

None
