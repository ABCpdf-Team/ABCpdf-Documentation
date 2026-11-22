# PDF to SVG Export

## Intro

When you use Doc.Rendering.Save to convert your PDF to SVG, ABCpdf produces a faithful rendition of the document. However for a variety of reasons the faithful rendition may not appear exactly as you expect. Here we explain why this is and how you can adapt the output to your needs.

## Text

PDF allows a complex set of options for sophisticated control over text display. While SVG contains many options for text layout, it does not support as wide a range as PDF.

PDF viewers are generally pretty good at supporting the text layout options supported by the PDF specification. Unfortunately the same cannot be said of SVG. Many SVG viewers ignore or misrepresent the more sophisticated text layout attributes supported by SVG.

The PDF format supports embedded fonts for high fidelity text reproduction. However the types of embedded fonts it supports are not the same as those supported by SVG and indeed subsetting may remove aspects that are crucial in the SVG representation.

For these reasons, if you require precise control over the way that your text appears when exporting to SVG, you should vectorize the page in question to convert any text into paths.

You can do this to the current page using the following code.

```csharp
((Page)doc.ObjectSoup[doc.Page]).VectorizeText();
```

## Images

Rendering to SVG produces placeholder tags for bitmap images in the SVG.

If you require that the images be exported, you should do so using code of the following form.

```csharp
static void SaveAsSvg(Doc pdf, string file) {
  pdf.Rendering.Save(file);
  string svg = File.ReadAllText(file);
  HashSet<string> hrefs = new HashSet<string>();
  string pattern = "<image xlink:href\\s*=\\s*(?:[\"'](?<1>[^\"']*)[\"']|(?<1>\\S+))";
  MatchCollection matches = Regex.Matches(svg, pattern);
  foreach (Match match in matches)
    hrefs.Add(match.Groups[1].Value);
  string folder = Path.GetDirectoryName(file);
  foreach (string href in hrefs) {
    string image = Path.Combine(folder, href);
    if (!File.Exists(image)) {
      // href is of form "imageXX.png" where XX is the PixMap ID
      int id = int.Parse(href.Substring(5, href.Length - 9));
      PixMap pm = pdf.ObjectSoup[id] as PixMap;
      using (Bitmap bm = pm.GetBitmap())
      bm.Save(image);
    }
  }
}
```

Note that in the above code the images are all exported as PNG. This is a good general purpose lossless export format. However for continuous tone images such as photographs you may wish to export as JPG as this will produce a smaller file size.

It is worth nothing that one of the internal compression formats within PDF streams is JPEG. So in cases where the [Stream.Compressions](../6-abcpdf.objects/streamobject/2-properties/compressions.md) has length one and the [Stream.Compression](../6-abcpdf.objects/streamobject/2-properties/compression.md) is CompressionType.Jpeg, it is often possible to use [Stream.GetData](../6-abcpdf.objects/streamobject/1-methods/getdata.md) save the raw data directly to a JPEG file.

However you need to be aware that there are differences. So while often possible, it is not always possible. In most situations for most images in the RGB color space it will work. However for other color spaces such as CMYK it will not and even in the case of RGB the output may be missing secondary data such as any related ICC color profile.
