# Annotations Example Project

## Project

This shows how to use ABCpdf to create form fields and document annotations.

Form fields are similar to HTML fields and encompass similar structures such as text boxes, radio buttons, check boxes, list boxes, signatures and push buttons.

Annotations are interactive in the same way as form fields but they do not hold a value to be submitted. There are a very wide variety of annotations you can create and these include stamps, notes, highlights, lines, arrows, rectangles and 3D scenes.

In particular this project shows how to create electronic signatures, how to sign them programmatically, how to check the validity of any signed signatures and how to use incremental updates to allow successive signings by a chain of people.

The code creates a single document containing an example of each type. The form fields include radio buttons, text fields, a combo box, a list box, a check box and push buttons.

The annotations include highlight, underline, strikeout and squiggly text markup, lines, polygons, a sticky note, a file attachment, stamps, links and an embedded movie.

Signature fields are added last so that the whole document is signed. Two are left unsigned and a third is signed using a certificate selected from the Windows certificate store. The signatures are then validated.

The project also shows how to embed files as attachments and how to add document level JavaScript.

For more details see the project or the Fields, Markup and Movies Example section in this documentation.

