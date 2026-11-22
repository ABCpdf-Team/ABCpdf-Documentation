# FlashVars Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `IEnumerable<KeyValuePair<string, object>>` | null | No | The Flash variables. |

## Notes

This property specifies the Flash variables. The object values can be any of the following:

- SwfActionValue.Undefined – the undefined value.
- SwfActionValue.Null – the null value.
- A Boolean – a primitive Boolean.
- A Char – a primitive string consisting of one character.
- A SByte, Byte, Int16, UInt16, or Int32 – a primitive number (32-bit integer).
- A UInt32, Int64, or UInt64 – a primitive number (32-bit integer if it is within the range of 32-bit integer; double-precision floating-point number, otherwise).
- A Single – a primitive number (single-precision floating-point number).
- A Double – a primitive number (double-precision floating-point number).
- A Decimal – a primitive number (32-bit integer if it is an integer within the range of 32-bit integer; double-precision floating-point number, otherwise).
- A String – a primitive string.
- IEnumerable\<KeyValuePair\<string, object>> – an object with KeyValuePair\<string, object>.Key as the property names and KeyValuePair\<string, object>.Value after this conversion as the property values.
- IEnumerable\<object> – an array with the objects after this conversion as the element values.

Reference semantics of objects is supported. When the same IEnumerable\<KeyValuePair\<string, object>> or the same IEnumerable\<object> is in different parts of this property value, the same object is used. In particular, you can create objects and properties/element values that form circular references.

## Example

Here, we import the chart in the frame at two seconds into a Flash movie.

```csharp
Doc doc = new Doc();
using(SwfImportOperation operation = new SwfImportOperation()) {
  operation.Doc = doc;
  operation.ContentAlign = ContentAlign.Top;
  operation.ContentScaleMode = ContentScaleMode.ShowAll;
  operation.ProcessingObject += delegate(object sender, ProcessingObjectEventArgs e) {
    if(e.Info.SourceType==ProcessingSourceType.MultiFrameImage && e.Info.FrameNumber.HasValue)
      e.Info.FrameNumber = 1+(long)(e.Info.FrameRate.Value*2);
  };

  const int chartWidth = 400;
  const int chartHeight = 300;
  SwfParameters parameters = new SwfParameters();
  parameters.StageWidth = chartWidth*20;
  parameters.StageHeight = chartHeight*20;

  Dictionary<string, object> flashVars = new Dictionary<string, object>();
  flashVars.Add("chartWidth", chartWidth);
  flashVars.Add("chartHeight", chartHeight);
  flashVars.Add("dataXML",
    "<chart caption='Weekly Sales Summary' xAxisName='Week'"
    +" yAxisName='Amount' numberPrefix='$'>"
    +"<set label='Week 1' value='14400' />"
    +"<set label='Week 2' value='19600' />"
    +"<set label='Week 3' value='24000' />"
    +"<set label='Week 4' value='15700' />"
    +"</chart>");
  parameters.FlashVars = flashVars;
  operation.Parameters = parameters;
  operation.Import(Server.MapPath("Column3D.swf"));
}
doc.Save(Server.MapPath("chart.pdf"));
doc.Clear();
```
