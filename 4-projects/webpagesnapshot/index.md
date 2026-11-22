# WebPageSnapshot Example Project

## Project

One of the most common operations that people want to perform is to take a PDF snapshot of the current page.

However this can be more complicated than one might imagine in the case of a personalized page. The page your user is seeing exists only for them. ABCpdf may know the URL of the page but it lives on the server and it is not your client - it has its own page. You can attempt to mimic the client by copying cookies or security tokens but this is fraught with difficulty as it may look like some kind of spoofing attempt. Just because you know the operation is valid does not mean your server will think it is.

Cookieless URLs can provide a solution but again your client may be behind some kind of logon which tend to be tight on security. Even if you know your client logon details such as a name and password they may not be in a form you can use yourself or they may rely on a third party authentication solution or two factor authentication. You cannot create a logon solution which can pick up an SMS code and enter it - the whole concept is fraught with difficulty.

This project demonstrates how to use an alternative and more robust approach to creating such a page snapshot. It intercepts the HTML which was passed to the client and then treats that as a separate page. It is simple and fast and it is good for situations involving authentication and security. It makes use of privileges it already has by virtue of being on the server, rather than trying to obtain privileges by impersonating the client.

The code consists of a single ASP.NET page. As the page is rendered, the HTML sent to the browser is saved in the session. When the user clicks to save the page, a base tag is added to the stored HTML so that images and style sheets still load. It is then converted using AddImageHtml and sent back to the browser as a PDF.

This provides a simple way to add a save as PDF button to a page which is protected by a login.
