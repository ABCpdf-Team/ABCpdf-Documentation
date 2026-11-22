# Open Function

Opens a sequence of tags.

## Syntax

*C#*

[`Tag`](../index.md)` Open(`[`Tag`](../index.md)` tag)`  
[`Tag`](../index.md)` Open(params string[] types)`

## Params

| Name | Description |
| :---: | --- |
| tag | The tag to be opened. |
| types | The types of tags to be opened in sequence |
| return | The last tag opened. |

## Notes

Opens a sequence of tags.

Ensure the Doc.Page is set correctly when you open a tag. If you open a tag on a page and then move to another you will end up with a tag that includes the page even though there may not be any tagged content on it.

## Example

The following code adds a list of animals. Normally this list would go directly into the Document root level tag. However here we first open a Section, Div and P (paragraph) so that the list will go inside those elements instead.

```csharp
using var doc = new Doc();
doc.Font = doc.EmbedFont("Arial");
doc.TextStyle.Size = 48;
doc.Rect.Inset(50, 50);
string[] animals = ["Panda", "Koala", "Red panda", "Otter", "Kitten",
  "Puppy", "Bunny", "Hedgehog", "Penguin", "Dolphin", "Seal", "Fox",
  "Squirrel", "Baby elephant", "Fawn", "Chick", "Hamster",
  "Guinea pig", "Ferret", "Quokka"];
var sb = new StringBuilder();
sb.AppendLine("<ul>");
foreach (var animal in animals)
  sb.AppendLine($"<li>{animal}</li>");
sb.AppendLine("</ul>");
doc.TextStyle.AutoTag = true;
doc.Tag.Open("Sect", "Div", "P");
int id = doc.AddTextStyled(sb.ToString());
doc.FrameRect();
while (true) {
  var tl = (TextLayer)doc.ObjectSoup[id];
  if (!tl.Truncated)
    break;
  doc.Page = doc.AddPage();
  id = doc.AddTextStyled("", id);
  doc.FrameRect();
}
doc.Tag.Close("P", "Div", "Sect");
doc.Save("doctagopen.pdf");
doc.Read("doctagopen.pdf");
var ts = doc.Tag.GetStructure();
var str = ts.ExtractStructure();
File.WriteAllText("doctagopen.txt", str.ToString());
```

|  |  |
| --- | --- |
| ![doctagopen.pdf \[Page 1\]](../../../images/pdf/doctagopen.pdf.png)<br>doctagopen.pdf \[Page 1\] | ![doctagopen.pdf \[Page 2\]](../../../images/pdf/doctagopen.pdf2.png)<br>doctagopen.pdf \[Page 2\] |

The output tag structure from the ExtractStructure call will be something like this,

```
<Root ObjID="7">
     <Document ObjID="9">
                <Sect ObjID="10">
                   <Div ObjID="11">
                            <P ObjID="12">
                                      <L ObjID="13">
                                              <LI PageNumber="1" ObjID="14">
                                                    <ActualText>•Panda</ActualText>
                                                    <MCID ID="0" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="15">
                                                    <ActualText>•Koala</ActualText>
                                                    <MCID ID="1" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="16">
                                                    <ActualText>•Red panda</ActualText>
                                                        <MCID ID="2" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="17">
                                                    <ActualText>•Otter</ActualText>
                                                    <MCID ID="3" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="18">
                                                    <ActualText>•Kitten</ActualText>
                                                   <MCID ID="4" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="19">
                                                    <ActualText>•Puppy</ActualText>
                                                    <MCID ID="5" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="20">
                                                    <ActualText>•Bunny</ActualText>
                                                    <MCID ID="6" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="21">
                                                    <ActualText>•Hedgehog</ActualText>
                                                 <MCID ID="7" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="22">
                                                    <ActualText>•Penguin</ActualText>
                                                  <MCID ID="8" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="23">
                                                    <ActualText>•Dolphin</ActualText>
                                                  <MCID ID="9" />
                                             </LI>
                                         <LI PageNumber="1" ObjID="24">
                                                    <ActualText>•Seal</ActualText>
                                                     <MCID ID="10" />
                                            </LI>
                                         <LI PageNumber="1" ObjID="25">
                                                    <ActualText>•Fox</ActualText>
                                                      <MCID ID="11" />
                                            </LI>
                                         <LI PageNumber="1" ObjID="26">
                                                    <ActualText>•Squirrel</ActualText>
                                                 <MCID ID="12" />
                                            </LI>
                                         <LI PageNumber="1" ObjID="27">
                                                    <ActualText>•Baby elephant</ActualText>
                                                    <MCID ID="13" />
                                            </LI>
                                         <LI PageNumber="2" ObjID="28">
                                                    <ActualText>•Fawn</ActualText>
                                                     <MCID ID="0" />
                                             </LI>
                                         <LI PageNumber="2" ObjID="29">
                                                    <ActualText>•Chick</ActualText>
                                                    <MCID ID="1" />
                                             </LI>
                                         <LI PageNumber="2" ObjID="30">
                                                    <ActualText>•Hamster</ActualText>
                                                  <MCID ID="2" />
                                             </LI>
                                         <LI PageNumber="2" ObjID="31">
                                                    <ActualText>•Guinea pig</ActualText>
                                                       <MCID ID="3" />
                                             </LI>
                                         <LI PageNumber="2" ObjID="32">
                                                    <ActualText>•Ferret</ActualText>
                                                   <MCID ID="4" />
                                             </LI>
                                         <LI PageNumber="2" ObjID="33">
                                                    <ActualText>•Quokka</ActualText>
                                                   <MCID ID="5" />
                                             </LI>
                                 </L>
                                  <MCID ID="6" StreamID="108" PageNumber="2" />
                           </P>
                  </Div>
                </Sect>
       </Document>
</Root>
```
