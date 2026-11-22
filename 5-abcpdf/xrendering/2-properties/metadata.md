# Metadata Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<string, string>` | null | No | A collection of TIFF tags that should be written to the output file. |

## Notes

This property can be used to insert custom tags for TIFF output.

To use this property, create a dictionary and assign it to this property. Then add a sequence of tag names and values for output to file. You will find a full list of TIFF tag names in the TIFF specification.

Most tags, such as the PageName, take a string value. However some tags may take one or more numbers instead. For example the PageNumber tag takes two numbers, the first of which specifies the (zero based) index of the current page and the second of which specifies the total number of pages (zero indicates undetermined). So to indicate the second page of a nine page output, you might use code of the following form.

```csharp
theDoc.Rendering.Metadata.Add("PageNumber", "2 9");
theDoc.Rendering.Metadata.Add("PageName", "Page Two");
```

To indicate that a value should be cleared you can assign an entry with a value of null. This can be useful if you want to, for example, disable the automatic insertion of page name and number tags.

Custom TIFF tags can be indicated using a hash followed by the number of the tag. For example the EXIF standard describes a UserComment tag with ID 37510. To insert such a tag you would use the name "#37510". All custom tags are assumed to be string based.
