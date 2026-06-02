# Paged HTML Example

## Setup

We first create a Doc object and inset the edges a little so that the HTML will appear in the middle of the page.

[C#] using var doc = new Doc(); doc.Rect.Inset(72, 144);

## Features

We set some HTML options to choose the HTML engine and features we are interested in. The defaults assigned here are set up for ease of development and you may wish to change some for release.

[C#] doc.HtmlOptions.Engine = EngineType.Chrome146; doc.HtmlOptions.UseScript = true; // enable JavaScript doc.HtmlOptions.Media = MediaType.Print; // Or Screen for a more screen oriented output doc.HtmlOptions.InitialWidth = 800; // In case we have a responsive site which is non-specific on good widths //doc.HtmlOptions.RepaintDelay = 500; // Only required if you have AJAX or animated content such as graphs //doc.HtmlOptions.IgnoreCertificateErrors = false; // Disabled for ease of debugging //doc.HtmlOptions.FireShield.Policy = XHtmlFireShield.Enforcement.Deny; // Disabled for ease of debugging

## Page

We add the first page of HTML. We save the returned ID as this will be used to add subsequent pages.

[C#]doc.Page = doc.AddPage(); int id = doc.AddImageUrl("http://www.yahoo.com/");

## Chain

We now chain subsequent pages together. We stop when we reach a page which wasn't truncated.

[C#]while (true) { doc.FrameRect(); // add a black border if (!doc.Chainable(id)) break; doc.Page = doc.AddPage(); id = doc.AddImageToChain(id); }

## Save

Finally we save.

[C#]doc.Save("pagedhtml.pdf");

## Results

We get the following output.

