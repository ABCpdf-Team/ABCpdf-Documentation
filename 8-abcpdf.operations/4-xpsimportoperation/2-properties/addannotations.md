# AddAnnotations Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | None | No | The types of annotations to be added. |

## Notes

This property specifies the types of annotations to be added for hyperlinks in the XPS file.

The AnnotationFlags type is a flags enumeration so different values can be combined together using bitwise operations.

The AnnotationFlags enumeration may take the following values:

* None - This is the default value. No annotation is added.
* InternalLink - Link annotations that point to pages in the same document are added.
* ExternalLink - Link annotations that link to external resources (e.g. URLs) are added.

