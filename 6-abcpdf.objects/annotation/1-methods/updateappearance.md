# UpdateAppearance Function

Update the Appearance Stream for this annotation.

## Syntax

```csharp
void UpdateAppearance()
```

## Params

| Name | Description |
| :---: | --- |
| none | n/a. |

## Notes

Update the Appearance Stream for this Annotation.

Annotations often have appearance streams which define how they appear on the page when displayed or printed. ABCpdf understands a variety of annotation types and can create an appropriate stream when requested.

Calling this function will result in the appearance stream being updated or (if one does not already exist) created.

> **Line Endings.** Annotations such as lines, polylines and free text callouts may have line endings such as arrows, circles or squares.
>
> By default the size of the line ending is proportional to the width of the line. However ABCpdf allows control over the line end size using an annotation ABCp_LEScaling entry. This is a second class custom tag as defined in the PDF Name Registry.
>
> During the generation of the appearance stream this tag can be used to control the relative size of the line endings. It is legal for the tag to be left in the PDF so that ABCpdf will continue to use it for any further updates to the appearance stream. Alternatively it can be deleted and as long as the appearance stream is not updated, the line endings will remain the same size.
>
> The LE entry is used to define line endings. The ABCp_LEScaling entry parallels the LE entry defining the relative sizes for the endings defined in the LE entry.
>
> A Line annotation has an LE consisting of an array of two entries representing the type of finial to be used at the start and end of the line. In this case the ABCp_LEScaling is an array of two numbers defining the relative sizes of the start and end finials.
>
> A Free text annotation functioning as a callout, has an LE entry consisting of a name representing the final to be used at the end of the line. In this case the ABCp_LEScaling is a number defining the relative sizes of the finial.
>
> Positive numbers represent a scale factor - so two would indicate an ending twice the normal size. Negative numbers can be used to indicate absolute values so in this context negative two would represent an ending with a size of two points. The default value if you provide a null entry is one - no scaling.
>
> You can set these values using simple ABCpdf calls such as doc.SetInfo(annot.ID, "/ABCp_LEScaling", "\[-2 0.5\]") and doc.SetInfo(annot.ID, "/ABCp_LEScaling:Num", "-2").

> **Ink Annotations.** An ink annotation represents something one might draw with a pen - a signature - a doodle - a scribble.
>
> In PDF 1.7 points in the line are represented using an InkList entry. However it is left as 'implementation dependent' as to whether points in the InkList should be joined using straight lines or curves. ABCpdf uses straight lines.
>
> In PDF 2.0 a new Path entry was introduced which allowed you to specify straight lines and curves. This should have improved matters but in fact it has made them worse. The InkList is still there because it is a required entry but the specification does not make clear whether the Path should be used in preference to the InkList or as well as it. The InkList allows multiple discontinuous lines but the Path allows only one so it is not clear what one should do in terms of a conflict. The specification states that the current graphics state should control path width and dash pattern but annotations do not have a graphics state. For these reasons ABCpdf does not currently use the Path entry.
