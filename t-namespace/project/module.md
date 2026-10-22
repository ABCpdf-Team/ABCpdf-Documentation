# [NAME: DeletePagesForm.cs]

[C#][CODE: using var doc = new Doc(); doc.Read("../Rez/spaceshuttle.pdf"); var pages = doc.ObjectSoup.Catalog.Pages.GetPageArrayAll(); foreach (var page in pages) page.StampFormXObjects(true); // see notes on NVDA above var op = new AccessibilityOperation(doc); op.PageContents.AddPages(); op.MakeAccessible(); doc.Save("accessible.pdf");]

