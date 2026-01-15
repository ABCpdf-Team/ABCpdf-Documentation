# RequestMethod Property

&nbsp;

## Notes

The UrlRequestMethodType enumeration can take any of the following values:

Get Post

This property specifies which method Doc.AddImageUrl uses to get the HTML page. Normally, Get is the preferred method when requesting the page is an idempotent operation. However, the Get method supports at most 2,048 characters in the URL. If the URL is longer than 2,048 characters and contains parameters, it is necessary to use the Post method. However, the URL minus the parameters (and the question mark) is still limited to 2,048 characters.

The Post method is used only when the the URL contains a question mark (and this property is set to Post). If the URL does not contain any parameter, the Post method can still be used by appending a question mark to the URL.

When the Post method is used in conjunction with the Gecko engine, ABCpdf obtains and stores the web page locally before invoking the engine. Since ABCpdf does not obtain additional headers from the Gecko engine, they are not sent in the request. The kind of headers that may not be sent include Accept, Accept-Language, Accept-Encoding, Keep-Alive, and Accept-Charset. The User-Agent may be different. In most situations, this is unimportant, but if you are relying on these headers, you can use the HtmlOptions.HttpAdditionalHeaders property to add your own headers to the request.

