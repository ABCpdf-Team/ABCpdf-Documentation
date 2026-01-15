# GetInfo Function

Gets string information about an object.

## Syntax

```csharp
string GetInfo(int id, string type)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be queried. |
| type | The type of information to be retrieved. |
| return | The returned information. |

## Notes

After you modify a document you may want to get back information about the objects you have added. For example you might want to find out the natural dimensions of an image or you might want to find out how many characters were drawn when you inserted some text. This method allows you access to this information.

There are core information types that all objects support. There are also information types specific to particular types of object. You can use core information types to allow you to iterate through every object in your document finding out specific information about each of them.

If the object does not exist or does not support the requested type of information then an empty string is returned.

Every object supports the ID and Type properties. For more detailed information about this and other properties see the Object Paths section of this document.

PDF objects are case sensitive so be sure you use the correct case when specifying information.

## Example

The following code snippet illustrates how one might report the 
            natural dimensions of an image.

```csharp
using var doc = new Doc();
string path = Server.MapPath("../mypics/mypic.jpg");
int id1 = doc.AddImageFile(path, 1);
int id2 = doc.GetInfoInt(id1, "XObject");
string theWidth = doc.GetInfo(id2, "Width");
string theHeight = doc.GetInfo(id2, "Height");
Response.Write($"Width {theWidth}< br>");
Response.Write($"Height {theHeight}< br>");
```

