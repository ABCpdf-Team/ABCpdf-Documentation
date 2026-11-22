# Introduction to Effects

Effects are an operation which can be applied to images. They include common and useful functions like blur and sharpen filters.

## Basics

Effects are applied using the [EffectOperation](../8-abcpdf.operations/d-effectoperation/index.md) class. To apply an effect you can use code as simple as this.

```csharp
void function() {
  using (Doc doc = new Doc()) {
    AddImagePage(doc, img5);
    using (ImageLayer layer = AddImagePage(doc, img5)) {
      using (EffectOperation effect = new EffectOperation("Sharpen")) {
        effect.Apply(layer.PixMap);
      }
    }
    doc.Rendering.Save("EffectSharpen1b.jpg");
}
```

## Examples

The examples make use of a function named AddImagePage. This function simply creates an appropriate Doc object, adds the image and returns the ImageLayer which was added.

```csharp
private ImageLayer AddImagePage(Doc doc, string path) {
  using (XImage img = XImage.FromFile(path, null)) {
    doc.MediaBox.SetSides(0, 0, img.Width, img.Height);
    doc.Page = doc.AddPage();
    doc.Rect.String = doc.MediaBox.String;
    int id = doc.AddImageObject(img);
    return (ImageLayer)doc.ObjectSoup[id];
  }
}
```
