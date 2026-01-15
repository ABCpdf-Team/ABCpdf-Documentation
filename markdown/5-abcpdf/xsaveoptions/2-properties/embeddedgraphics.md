# EmbeddedGraphics Property

&nbsp;

## Notes

This property specifies how PDF vector graphics such as paths are implemented. Different exporters can take advantage of different export formats. However, only the DOCX and HTML exporters currently support embedded graphic output.

The EmbeddedGraphicsType enumeration may take the following values:

Automatic - selects a sensible default value based on the exporter and content None - no image output Image - graphics are rendered to a bitmapped image (valid for DOCX and HTML) Vml - graphics are rendered using VML (valid for DOCX only) HtmlCanvas - graphics are rendered using the HTML 5 Canvas element (valid for HTML only) Html5WebGL - the entire page is rendered using HTML 5 WebGL (valid for HTML only)

Please note the following limitations inherent in the VML specification. VML does not support the non-zero fill rule so VML paths may not be identical to PDF paths. VML does not support sophisticated dashing so dashed or dotted lines are  approximated. VML does not specify how bitmapped images and vector paths should interact so the Z-order is dependent on the VML display implementation - a graphic which overlays an image in a PDF may vanish under the image using certain VML viewers.

The HTML5 Canvas element is a blank element on which JavaScript can draw. For older versions of Internet Explorer, the canvas element is automatically converted into VML via ExplorerCanvas.

Please note the following limitations inherent in the HTML Canvas specification. The even-odd fill rule is not supported in a consistent way so enabling it requires JavaScript for browser specific support. The HTML Canvas does not support  dashing so dashed or dotted lines are  not displayed. Because VML only supports the non-zero fill rule, paths will look different in older versions of Internet Explorer which are working via the ExplorerCanvas VML conversion.

For more details about exporting to HTML with 3D WebGL please see the WebGL Export Reference.

If an invalid type is specified for a specific export format, an exception will be thrown.

