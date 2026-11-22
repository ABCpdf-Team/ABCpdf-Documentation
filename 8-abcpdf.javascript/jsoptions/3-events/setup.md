# SetUp Event

Occurs after the JavaScript engine is initialized and before the specified JavaScript code is executed.

## Syntax

```csharp
event Func<JSCallInfo, object> SetUp;
```

## Params

| Name | Description |
| :---: | --- |
| arg | A JSCallInfo providing only the context in [JSCallInfo.Context](../../jscallinfo/2-properties/1-context.md). |
| return | The return value is ignored. |

## Notes

This event allows the set-up of the JavaScript environment. No JavaScript function is created for the delegate of the event.

## Example

Here, we implement the Field.display property.

```csharp
using (Doc doc = new Doc()) {
  doc.Read(Server.MapPath("../mypics/sample.pdf"));
  JSOptions options = new JSOptions();
  options.SetUp += delegate (JSCallInfo arg) {
    JSValue prototype = arg.Context.GetFieldPrototype();
    if(!prototype.HasProperty("display")) {
      JSAccessorDescriptor desc = new JSAccessorDescriptor();
      desc.Configurable = false;
      desc.Enumerable = true;
      desc.Get = delegate (JSCallInfo info) {
        JSContext context = info.Context;
        int id = info.This.GetDocObjectID();
        if(id==0)
          return null;
        Annotation annot = (Annotation)context.Doc.ObjectSoup[id];
        Annotation.AnnotationFlags flags = annot.Flags;
        if((flags & Annotation.AnnotationFlags.Hidden)!=0)
          return 1;  // display.hidden
        int v = 0;  // display.visible
        if((flags & Annotation.AnnotationFlags.Print)==0)
          v |= 2; // display.noPrint
        if((flags & Annotation.AnnotationFlags.NoView)!=0)
          v = v ^ 2 | 1;  // display.hidden, display.noView
        return v;
      };
      desc.Set = delegate (JSCallInfo info) {
        if(info.ArgCount<2)
          return null;
        JSContext context = info.Context;
        int id = info.This.GetDocObjectID();
        if(id==0)
          return null;
        Annotation annot = (Annotation)context.Doc.ObjectSoup[id];
        Annotation.AnnotationFlags flags = annot.Flags;
        int v = info.Args[1].GetValueInt();
        switch(v) {
        case 0:  // display.visible
          flags = flags & ~Annotation.AnnotationFlags.Hidden
            & ~Annotation.AnnotationFlags.NoView
            | Annotation.AnnotationFlags.Print;
          break;
        case 1:  // display.hidden
          flags = flags & ~Annotation.AnnotationFlags.NoView
            | Annotation.AnnotationFlags.Print
            | Annotation.AnnotationFlags.Hidden;
          break;
        case 2:  // display.noPrint
          flags = flags & ~Annotation.AnnotationFlags.Hidden
            & ~Annotation.AnnotationFlags.NoView
            & ~Annotation.AnnotationFlags.Print;
          break;
        case 3:  // display.noView
          flags = flags & ~Annotation.AnnotationFlags.Hidden
            | Annotation.AnnotationFlags.Print
            | Annotation.AnnotationFlags.NoView;
          break;
        default: return null;
        }
        annot.Flags = flags;
        return null;
      };
      prototype.DefineProperty("display", desc);
    }
    return null;
  };
  options.LoadGlobals = true;
  doc.Form.RunJS("var f = this.getField(\"Text1\"); f.display = display.hidden;", options);
  doc.Save(Server.MapPath("hiddenfield.pdf"));
}
```
