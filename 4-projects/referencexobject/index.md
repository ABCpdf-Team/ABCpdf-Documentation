# ReferenceXObject Example Project

## Project

The project detailed here shows how to convert images to Reference XObjects.

In most cases a PDF document contains the images it wants to display. That way you have one package - the PDF document - which contains everything it needs.

However sometimes it can be advantageous to hold images externally, much like as happens in HTML. This way you can swap one image out for another and you keep the base template document the same.

This project shows how to take a PDF document and convert it into a base template referencing separate external image documents.

The code moves the images in a document into separate PDF files, grouped by color space. Each image in the main document is replaced by a Reference XObject which points to the external file. The reverse operation is also shown, bringing the images back in to create a self-contained document.

Note that Acrobat needs to be configured before it will display external Reference XObjects. The comments in the code explain which preferences need to be changed.
