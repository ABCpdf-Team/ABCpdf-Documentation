# NeedsStream Property

&nbsp;

## Notes

This property is true if the object has been created with an XReadOptions with ReadModule that uses an Operation (whether Operation is actually null or not) and the stream provided is required to be kept open and unmodified as long as the object is not cleared, disposed of, or garbage-collected. If it is true, the object has taken the ownership of the Stream, which is disposed of when the object is disposed of. You can make the object release the ownership without disposing of the Stream using the parameterized overloads of Dispose and Clear

