# AddPoly Function

Adds a polygon to the current page.

## Syntax

```csharp
int AddPoly(string points, bool filled)
int AddPoly(double[] points, bool filled)
int AddPoly(double[] points, int index, int count, bool filled)
```

## Params

| Name | Description |
| --- | --- |
| points | The coordinates of the vertices of the polygon. |
| index | The index of the first coordinate into the array points. |
| count | The number of coordinates in the array points to use. |
| filled | Whether to fill the polygon rather than simply outline it. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

Adds a polygon to the current page. The polygon is drawn in the current color at the current width and with the current options. The polygon may be outlined or filled.

The points string is a sequence of numbers representing the coordinates of the polygon. The string should be of the format "x1 y1 x2 y2 ... xN yN". The numbers may be delimited with spaces, commas or semicolons. If the first point is equal to the last then the path is closed before outlining.

The AddPoly function returns the Object ID of the newly added Graphic Object.

## Example

The following code adds a transparent green outlined star over 
            the top of a red filled star.

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Color.String = "255 0 0";
doc.AddPoly("124 158 300 700 476 158 15 493 585 493 124 158", true);
doc.Color.String = "0 255 0 a128";
doc.AddPoly("124 158 300 700 476 158 15 493 585 493 124 158", false);
doc.Save(Server.MapPath("docaddpoly.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![docaddpoly.pdf](../../../../images/pdf/docaddpoly.pdf.png) — docaddpoly.pdf
