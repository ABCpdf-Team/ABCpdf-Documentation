# OCGLayers Example Project

## Project

The term OCG refers to Optional Content Groups. These are what most people would conceptualize as visible layers (not to be confused with the [Doc.Layer](../../5-abcpdf/doc/2-properties/layer.md) concept).

OCGs allow you to specify content that may be visible or invisible. As a user, you can see the names of the OCGs that exist and you can turn them on or off to see or hide the respective content.

It is a mistake to think of OCGs as pure layers, as the rules associated with them can be quite sophisticated. Each content item on the page may be associated with one or more nested visibility groups and it is only if all these groups are visible that the content item is visible. While visibility groups are often OCGs they can also be Optional Content Membership Dictionaries (OCMD items) - a construct that determines visibility from a set of OCGs using a set of custom written rules. So visibility can be complex and items with visibility may be interleaved rather than conceptually part of a simple contiguous layer.

That said, it is quite common for simple OCG setups to mimic simple contiguous layers as this is what most people require.

This project shows how to create content with visibility determined using OCGs. It also includes more complex examples detailing the use of nested OCGs and OCMDs.

As well as creating layers it also shows how to turn OCGs on and off, annotate the items on a page based on the OCGs that they belong to and how to redact and delete invisible items, removing any associated OCGs.

The code is built around an OptionalContent class which provides access to the optional content groups within a document. It allows you to add layers, nest one layer inside another, set membership policies and visibility expressions, and find out which layers a page uses.

It also shows how to remove unused layers. The example form allows you to open a PDF, view its layers, show or hide each one and preview the result.
