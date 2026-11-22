# Transcode Function

Transcodes and reloads the IndirectObject

## Syntax

*C#*

[`IndirectObject`](../index.md)` Transcode()`

## Params

| Name | Description |
| :---: | --- |
| return | An appropriate subclass of IndirectObject. |

## Notes

PDF objects are not hard typed. The only thing that distinguishes one from another are the named attributes which are applied to them. To enable an appropriate class of IndirectObject to be created ABCpdf has to examine the attributes on the base object and then create an appropriate subclass depending on those characteristics. This is known as transcoding.

Normally transcoding takes place automatically as objects are loaded or added. However sometimes changes occur which may result in core aspects of the object changing. These changes may require caches to be regenerated or even an entirely new object to be created - one which better represents the new structure of the object. This is particular the case for the FontObject class as it is heavily dependent on caching and often on other objects in the ObjectSoup.

The Transcode method re-interprets this object and if it is appropriate, it returns a newly created object of an appropriate subclass. If transcoding results in a new object being created it will displace the current object from the soup. As such you will need to discard the old object if a new one is returned.
