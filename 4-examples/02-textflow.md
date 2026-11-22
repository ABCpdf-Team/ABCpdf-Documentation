# Text Flow Example

This example shows how to flow text from one area to another. The techniques shown here are used to flow text between pages but they could equally well be applied to flowing text between areas - such as columns - on the same page.

## Setup

First we'll set up some convenient variables. One will determine the gap between our columns and the other will contain the text we want to display.

```csharp
int id = 0;
string text = "Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur. Hi omnes lingua, institutis, legibus inter se differunt. Gallos ab Aquitanis Garumna flumen, a Belgis Matrona et Sequana dividit. Horum omnium fortissimi sunt Belgae, propterea quod a cultu atque humanitate provinciae longissime absunt, minimeque ad eos mercatores saepe commeant atque ea quae ad effeminandos animos pertinent important, proximique sunt Germanis, qui trans Rhenum incolunt, quibuscum continenter bellum gerunt. Qua de causa Helvetii quoque reliquos Gallos virtute praecedunt, quod fere cotidianis proeliis cum Germanis contendunt, cum aut suis finibus eos prohibent aut ipsi in eorum finibus bellum gerunt. [Eorum una, pars, quam Gallos obtinere dictum est, initium capit a flumine Rhodano, continetur Garumna flumine, Oceano, finibus Belgarum, attingit etiam ab Sequanis et Helvetiis flumen Rhenum, vergit ad septentriones. Belgae ab extremis Galliae finibus oriuntur, pertinent ad inferiorem partem fluminis Rheni, spectant in septentrionem et orientem solem. Aquitania a Garumna flumine ad Pyrenaeos montes et eam partem Oceani quae est ad Hispaniam pertinet; spectat inter occasum solis et septentriones.] Apud Helvetios longe nobilissimus fuit et ditissimus Orgetorix. Is M. Messala, [et P.] M. Pisone consulibus regni cupiditate inductus coniurationem nobilitatis fecit et civitati persuasit ut de finibus suis cum omnibus copiis exirent: perfacile esse, cum virtute omnibus praestarent, totius Galliae imperio potiri. Id hoc facilius iis persuasit, quod undique loci natura Helvetii continentur: una ex parte flumine Rheno latissimo atque altissimo, qui agrum Helvetium a Germanis dividit; altera ex parte monte Iura altissimo, qui est inter Sequanos et Helvetios; tertia lacu Lemanno et flumine Rhodano, qui provinciam nostram ab Helvetiis dividit. His rebus fiebat ut et minus late vagarentur et minus facile finitimis bellum inferre possent; qua ex parte homines bellandi cupidi magno dolore adficiebantur. Pro multitudine autem hominum et pro gloria belli atque fortitudinis angustos se fines habere arbitrabantur, qui in longitudinem milia passuum CCXL, in latitudinem CLXXX patebant.";
```

## Doc Obj

Next we create an ABCpdf Doc object and give it our basic settings.

We enlarge the line width, increase the font size, enable justification and inset the drawing rectangle from the edges of the document.

```csharp
using var doc = new Doc();
doc.Width = 4;
doc.FontSize = 32;
doc.TextStyle.Justification = 1;
doc.Rect.Inset(20, 20);
```

## Adding

We add our base text to the current page of the document. We then enter a loop, adding pages and chaining HTML boxes together until we run out of text to display.

```csharp
doc.FrameRect();
id = doc.AddTextStyled(text);
while (doc.Chainable(id)) {
  doc.Page = doc.AddPage();
  doc.FrameRect();
  id = doc.AddTextStyled("", id);
}
```

## Save

After adding all our text we save the document to a specified location and clear our document.

```csharp
doc.Save("textflow.pdf");
```

## Results

![textflow.pdf \[Page 1\]](../images/pdf/textflow.pdf.png)  
textflow.pdf \[Page 1\]

![textflow.pdf \[Page 2\]](../images/pdf/textflow.pdf2.png)  
textflow.pdf \[Page 2\]

![textflow.pdf \[Page 3\]](../images/pdf/textflow.pdf3.png)  
textflow.pdf \[Page 3\]
