# SwfExport Example Project

## Project

Flash (SWF) export can be either simple or sophisticated based on your needs.

At the simplest all you need to do is Doc.Save your document as SWF.

However the SWF content really needs to exist in the context of a controller. This example shows how you can use your own template to provide navigation and information functions.

It shows how to wrap the output in a package which might look like a book or a brochure or perhaps a slide show.

The code finds the images in a PDF and works out the size at which each is displayed. It then reduces the resolution of each image and applies JPEG compression to keep the download small. Finally it saves the document as SWF using a Flash template which provides page navigation.

Note that Adobe ended support for Flash Player at the end of 2020, so this is mostly of interest for existing systems.

