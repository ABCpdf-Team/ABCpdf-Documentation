# Other Coordinate Spaces

## Basics

ABCpdf uses the standard [PDF coordinate space](../2-getting_started/3-coordinates.md).

The origin of this space is at the bottom left of the document. Distances are measured up and to the right in points.

Windows often uses a top-down coordinate space. The difference between the bottom-up nature of PDF and the top-down nature of Windows can result in confusion. Using the [AddGrid](../5-abcpdf/doc/1-methods/addgrid.md) method in your code can be very helpful in resolving this type of issue.

Abstracting the coordinate space can make layout easier but removes you from the underlying page layout embedded into your PDF. For this reason we would suggest you stick to the standard PDF coordinate space where practical.

If you wish to use a different coordinate system you can use the document [Units](../5-abcpdf/doc/2-properties/units.md) and [TopDown](../5-abcpdf/doc/2-properties/topdown.md) properties or a [Transform](../5-abcpdf/doc/2-properties/transform.md) to accomplish this. There are subtle differences between these approaches.

## Units

The document [Units](../5-abcpdf/doc/2-properties/units.md) and [TopDown](../5-abcpdf/doc/2-properties/topdown.md) properties allow you to use units of measurement like mm or cm. They also allow you to invert the coordinate system so that distances are measured down from the top rather than up from the bottom.

These properties enable an abstraction designed to make layout easier. However the underlying units of measurement and page layout remain the same.

When you call a page layout operation like [AddText](../5-abcpdf/doc/1-methods/addtext.md) or [FrameRect](../5-abcpdf/doc/1-methods/framerect.md) your abstracted coordinates are translated into PDF coordinates before the object is inserted into the document.

For most layout tasks you can ignore the translation. However if you are using low-level access to the PDF structure or if you are using [Transforms](../5-abcpdf/xtransform/index.md) then you need to be aware of it.

Suppose you call [FrameRect](../5-abcpdf/doc/1-methods/framerect.md) and then extract the raw content stream from the returned object. You must be aware that the base coordinates included in the stream are measured in the PDF coordinate space and not in your current coordinate system.

Document Transforms operate on the native PDF coordinate space. So when you specify a rotation around the origin - the origin specified is at the bottom left of the document - not the top.

## Transform

[Transforms](../5-abcpdf/xtransform/index.md) are an inherent part of the PDF specification. They are not an abstraction imposed by ABCpdf but a set of drawing instructions inserted into the PDF document to modify the PDF drawing space. The fact that there is no abstraction can be very useful.

For example suppose you impose a scale transform so you can specify your page layout in mm rather than points. You then call [FrameRect](../5-abcpdf/doc/1-methods/framerect.md) and get the raw content stream from the returned object. The coordinates included in the stream are measured in mm rather than points.

However transforms can be difficult to understand and they are extremely literal.

Suppose you impose a transform to flip, scale and translate your coordinate space so that distances are measured in mm from the top left rather than points from the bottom left.

Many graphical objects - lines and rectangles - will appear correctly. However the transform is literal and the flip aspect means that any images and text you add will appear upside down.
