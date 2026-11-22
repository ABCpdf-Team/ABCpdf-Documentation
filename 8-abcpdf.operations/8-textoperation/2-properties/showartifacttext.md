# ShowArtifactText Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to show text content that is marked as an artifact. |

## Notes

Whether to show text content that is marked as an artifact.

By default all text is returned, including text that may not be relevant to the user because it is tagged as an artifact. In cases where you are extracting text you may wish to ignore artifacts since, by definition, they are irrelevant. In cases where you are changing text you typically want to include artifacts as, while they offer no semantic information, they still have an appearance that may need updating.

Using this setting you control whether you want this text returned by [GetText](../1-methods/gettext.md).
