# Kernings Property

## Notes

The kerning values in thousandths of a unit for all kerning character pairs in the font.

This property contains kerning values for all character pairs in the font. Kerning adjusts the spacing between specific pairs of characters to improve visual appearance, such as moving a 'W' closer to an 'a'. The property is a dictionary where each key is a pair of characters and each value is the kerning adjustment measured in thousandths of a PDF unit. For example, a negative value moves the characters closer together while a positive value pushes them apart.

The dictionary uses XTuple as its key type. XTuple is a tuple class that automatically handles conversions to either the standard Tuple or System.ValueTuple types depending on which version of .NET you are targeting. This means you can work with familiar tuple syntax in your code, and XTuple will translate to the appropriate underlying type for your framework version without requiring any extra work from you.
