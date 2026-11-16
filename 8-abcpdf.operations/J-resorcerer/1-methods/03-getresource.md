# GetResource Function

Gets a resource from the resources dictionary.

## Syntax

[C#]

```csharp
<a href="../../J-atomandobject/default.htm">AtomAndObject</a> GetResource(<a href="../../../6-abcpdf.objects/1-indirectobject/default.htm">IndirectObject</a> owner, ResourceType type, string name)<a href="../../J-atomandobject/default.htm">AtomAndObject</a> GetResource(IEnumerable&lt;<a href="../../../6-abcpdf.objects/1-indirectobject/default.htm">IndirectObject</a>&gt; callChain, ResourceType type, string name)
```

## Params

| **Name** | **Description** |
| --- | --- |
| owner | The owner of the stream - either a Page or Form XObject. |
| callChain | From the Page or Form XObject using the resource, out to the Page it is drawn on. |
| type | The type of resource. For example this might be "Font". |
| name | The name of the resource as referenced in the content stream. |
| return | The resource. |

## Notes

Gets a resource from the resources dictionary.

Resources are cached for fast lookup of repeated requests. If you change the resources of a Page or Form XObject after looking them up, call [ClearCache](02-clearcache.md) so that subsequent lookups reflect the change.

The ResourceType enumeration may take the following values:

* ExtGState - External graphics states.
* ColorSpace - Color space for graphics.
* Pattern - Pattern for filling areas.
* Shading - Shading type for filling areas.
* XObject - Encapsulated image in raster or vector form.
* Font - Font typeface for drawing text.
* ProcSet - Predefined procedure sets. This property is deprecated in the PDF specification.
* Properties - Marked content properties.

Almost all Form XObjects hold all the resources they use, so in practice you can look resources up in the owner of the stream alone. However, the PDF specification does allow a Form XObject to omit some or all of its resources and take them from the content stream in which it appears - the page, or another Form XObject which draws it. This is a legacy of very early versions of PDF and is rare.

To find such resources, pass the call chain. This starts with the owner of the stream which references the resource, followed by the owner of the stream which invokes it, and so on, typically ending with the page. The first one which holds the resource is used. When processing content using a [ContentStreamScanner](I-contentstreamscanner/default.md), the [Owners](I-contentstreamscanner/2-properties/03-owners.md) stack holds the call chain in exactly this order, so you can pass it directly.

## Example

None
