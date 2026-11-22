# ValidatePDF Example Project

## Project

The Elements namespace allows structured access to the PDF Objects that exist.

As part of this structure it is possible to validate each of the objects in a document to ensure that they conform to the PDF Specification.

The validation covers the properties that each object may contain, the values that each property may take and the version of the PDF specification that is required for these properties to be valid.

This project shows how to use the Elements namespace to validate documents and report any information or irregularities.

The ValidationUtilities class can check a single file or a whole folder, writing a report to a log file. You can choose which checks to make: the objects in the document, the page content streams, stream compression and the low level file syntax.

It can also report orphaned objects which are not referenced by anything. So it is useful for finding out why a PDF fails a preflight check or will not open in some viewers, or for checking which PDF version a file requires.
