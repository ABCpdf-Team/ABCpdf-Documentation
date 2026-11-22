# GetKids Function

Gets a set of Fields that are descendents of this one.

## Syntax

*C#*

[`Field`](../index.md)`[] GetKids(int maximumDepth)`

## Params

| Name | Description |
| :---: | --- |
| maximumDepth | The maximum depth to search. |

## Notes

Gets a set of Fields that are descendents of this one.

The maximum depth parameter allows you to control the depth to which the field tree is searched. One for immediate children, two for children and grandchildren, etc.

Set the maximumDepth to Int32.MaxValue if you wish to retrieve all the fields under this one.
