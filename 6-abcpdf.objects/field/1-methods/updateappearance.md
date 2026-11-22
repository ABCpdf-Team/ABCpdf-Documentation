# UpdateAppearance Function

Update the appearance of all the Annotations associated with this field

## Syntax

```csharp
void UpdateAppearance()
```

## Params

| Name | Description |
| :---: | --- |
| none | n/a |

## Notes

Update the appearance of all the [Annotations](../../annotation/index.md) associated with this field.

A field may have more than one appearance on one or more pages. Each appearance is represented as an Annotation. When a field is changed in a way which may impact the visual rendition on the page, the appearance of all the Annotations associated with that field need to be updated.

When you update the [Value](../2-properties/value.md) this happens automatically. However if you change other properties such as the [TextColor](../2-properties/textcolor.md) you will need to make an explicit call to ensure the appearance streams are updated.
