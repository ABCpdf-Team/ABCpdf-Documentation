# Repair

&nbsp;

## Notes

Some PDF files may not be fully compliant with PDF specification. In short they may  be corrupt.

ABCpdf will work around minor forms of corruption in which the intent is obvious. However some more major forms of corruption require that the entire document is read and rebuilt. This will only occur if the Repair property is set to true.

Rebuilding a document is not ideal. Not only  is it  time consuming, but  there may also be more than one way of performing the rebuild. Depending on the strategy used one may end up with two different results. Most often the results will, for all practical purposes, be identical. However on rare occasions they might be different. For this reason the default value of this property is false.

Many clients who need to process large quantities of PDF documents, from sources of varying quality, end up writing code of the following form.

[C#] try { theDoc.Read(theFile); } catch { XReadOptions xr = new XReadOptions(); xr.Repair = true; theDoc.Read(theFile, xr); }

[Visual Basic] Try theDoc.Read(theFile) Catch Dim xr As New XReadOptions() xr.Repair = True theDoc.Read(theFile, xr) End Try

