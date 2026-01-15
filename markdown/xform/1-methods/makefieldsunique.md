# MakeFieldsUnique&nbsp;Function

Makes shared&nbsp;XForm fields unique.

## Syntax

```csharp
void MakeFieldsUnique()
void MakeFieldsUnique(string token)
```

## Params

| Name | Description |
| --- | --- |
| token | A token appended to the existing field name, together with the page number. This makes the field name unique. Default value is "_page". |

## Notes

Makes shared XForm fields unique.

After duplicating pages via calls such as RemapPages and Append, fields may end up shared by pages. This means that updating a field in a page will affect the same field in a different page. Very often this is not the desired behaviour. Fields should then be made unique. Changing fields in a page will not affect other pages when fields are unique. Call this method to make the fields unique. For example: RemapPages("1 1") creates two copies of the first page, which means that any field owned by the first page is now shared by two pages. Calling MakeFieldsUnique after RemapPages, will create separate copies of the fields, each one with a unique name.

To make names unique we use the token parameter. This is a string that is appended to the field name. It is also followed by the page number. For example, you can set the token to something like "_page", the default value. The field names will then be changed to ExistnigName_page1, where ExistingName is the current name of the field and the field is located on page 1. Fields must have unique names, this is required by the PDF specifications.

If the token already exists in the field name - and is located at the end except for digits - only the page number is changed. The token will not be appended twice. Therefore an existing field name that ends with digits, and has the exact token before such digits, will have the digits replaced by the page number and nothing else changed.

The token may be empty but be aware that any digits at the end of the field name will be replaced by the page number. If the token is null it will be replaced by the default token, _page.

If a field is shared by several widget annotations either on the same or different pages, we do our best not to break this sharing when the fields are made unique. When duplicating a shared field, the page number in the field name will be the number of the last page the field appeared on. For example, take a field called "title" and shared between pages 1 and 2. The following remap is performed: "1 1 2 2". Then MakeFieldsUnique is called. The first and third pages will then share a field called title_page3 and the second and forth pages will share a field called title_page4. If remapping with "1 2 1 2", then the first two pages share title_page2 and the last two pages share title_page4.

