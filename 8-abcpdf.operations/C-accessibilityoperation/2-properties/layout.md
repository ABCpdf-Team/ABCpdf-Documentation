# Layout Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | Recursive | No | The method that should be used for determining paragraph order. |

## Notes

The method that should be used for determining paragraph order.

When a document is made accessible one needs to determine the reading order for the text. This property allows one to control the method which is used to determine the reading order of the paragraphs on the page.

The LayoutMethod enumeration may take the following values:

* None - Use the order of layout that already exists on the page.
* Recursive - Recursively group by rows and columns.
* TopDownLeftRight - Order primarily top to bottom, secondarily left to right.
* TopDownRightLeft - Order primarily top to bottom, secondarily right to left.

The None option may seem initially attractive since drawing sequence and semantic sequence might seem similar. However the reality is that PDFs are often constructed in peculiar ways; tables will sometimes be drawn left to right, sometimes top to bottom; pages will be drawn, then extra sections will be drawn on top of them to modify the existing structure. In general the other options will provide more predicable results.

---
**Reading Direction.**
Some documents contain bi-directional or right-to-left text like Hebrew and Arabic. If this is the case, before the operation, you may wish to change the reading direction and language. This helps ABCpdf analyse the document correctly and without the change of direction the text may be read backwards.

The following code can be used to set the predominant language and text direction for Hebrew.

[C#]

```csharp
doc.SetInfo(doc.Root, "/Lang:Name", "he-IL"); // Language-Tag defined in RFC 3066
doc.SetInfo(doc.Root, "/ViewerPreferences*/Direction:Name", "R2L");
```

---

If your documents are complicated and you require complete control over the detection process, you can do this using the techniques detailed in the AccessiblePDF example project which comes with ABCpdf.

## Example

None
