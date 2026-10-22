# Platform Property

## Notes

The default platform being used for the file specification. For historic reasons PDF has supported multiple different files for multiple different platforms. This was appropriate when files were often non-interoperable and would not port easily between machines.

Fortunately this state of affairs is now unusual and only the default "UF" platform is commonly used. Adobe do not specify what the initials stand for, but it is likely to be Unicode File, though it could be Universal File or URL File.

While you are unlikely to wish to create documents which use these obsolescent platforms, you may find old documents that use them. This method allows you to access information specified by platform. Appropriate selectors are "UF", "F", "DOS", "Mac" or "Unix" as per the descriptions in the Adobe PDF Specification. You can use the Platforms property to determine which are being used.

The default of "UF" provides access via the standard settings as specified in the PDF 1.7 specification.

## Example

None.

