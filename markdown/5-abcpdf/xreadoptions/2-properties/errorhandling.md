# ErrorHandling 
Property

&nbsp;

## Notes

The ErrorHandlingType enumeration may take the following values: OutputUntilErrorNoOutputOnError

The OutputUntilError directs ABCpdf to process the current file as far as possible even if it encounters an error. This can be useful for dealing with common forms of corruption. For example EPS files sometimes get truncated. As long as the truncation is small the output will be the same as the complete file despite the fact that from technical point of view these files are invalid.

However one cannot know exactly how small a truncation is. It might be that one needs to be absolutely sure that a file is valid; that it is better to throw an exception rather than risk an incomplete image. This behavior is achieved using NoOutputOnError.

