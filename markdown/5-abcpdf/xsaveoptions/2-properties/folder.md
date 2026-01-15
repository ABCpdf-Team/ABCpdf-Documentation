# Folder Property

&nbsp;

## Notes

This property specifies the folder where to store additional data such as images and fonts. it is only used when exporting documents to HTML. It is ignored otherwise.

If you set a relative path, it will be relative to the location of the output path passed to Doc.Save(). If you set an absolute path, the output html will contain absolute URLs.

If you are saving to a stream and specify a relative path, then the path is relative to the current directory.

If you are saving to file and do not specify a folder, then a folder with the same name as the output file will be created in the directory where the output file is located.

