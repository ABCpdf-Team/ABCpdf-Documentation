# Rules Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `List<`[`XHtmlFireShield.Rule`](../../xhtmlfireshield.rule/index.md)`>` | See below. | No | File access rules for the worker process |

## Notes

File access rules for the worker process.

To determine whether access is allowed to a specific path, the rules are evaluated in sequence.

A path may match with multiple rules and it is the final evaluated access type at the end of the sequence, which determines the access level. Rules are case insensitive.

At the start of processing the evaluated access type is Deny. This means that, by default, all file access is denied.

For each rule, if the file path starts with the rule path and the file name matches the pattern, then the rule access type is assigned to the evaluated access type.

In this way you can set up a rule sequence which matches on a general level but then denies on a specific level. For example you might allow access to all files in a folder but then deny access to .aspx files within that folder.

The default set of rules is reasonable for most situations. However you may wish to modify it dependent on your needs.

## Example

Also see example code in: [XHtmlOptions FireShield Property](../../xhtmloptions/2-properties/fireshield.md).
