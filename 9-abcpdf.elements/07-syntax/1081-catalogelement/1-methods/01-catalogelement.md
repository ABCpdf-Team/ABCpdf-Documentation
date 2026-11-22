# CatalogElement Function

Create a new [CatalogElement](../index.md).

## Syntax

*C#*

[`CatalogElement`](../index.md)`()`  
[`CatalogElement`](../index.md)`(Atom atom, IndirectObject host)`  
[`CatalogElement`](../index.md)`(IndirectObject obj)`  
[`CatalogElement`](../index.md)`(`[`Element`](../../../01-base/1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| relation | An [Element](../../../01-base/1086-element/index.md). This can be any [Element](../../../01-base/1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../../01-base/1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../../01-base/1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [CatalogElement](../index.md).

The different constructors allow different ways of creating an [Element](../../../01-base/1086-element/index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../../../01-base/1086-element/index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../../../01-base/1086-element/index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../../../01-base/1086-element/index.md). For this you might use code of the following form "[CatalogElement](../index.md) root = new [CatalogElement](../index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../../../01-base/1086-element/index.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](../../../01-base/1086-element/index.md) and then Assigns the Atom to it. The result is a specialized [Element](../../../01-base/1086-element/index.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../../../01-base/1086-element/index.md).
- Indirect - Create [Element](../../../01-base/1086-element/index.md) containing an IndirectObject.
- Direct - Create [Element](../../../01-base/1086-element/index.md) containing an Atom.

## Example

This code snippet is taken from Annotations.cs line 325 in the Annotations example project.

[`FieldElement.EntryT`](../../../12-interactive/1440-fieldelement/2-properties/05-entryt.md)` = fieldName;`  
[`CatalogElement`](../index.md)` cat = new `[`CatalogElement`](../index.md)`(Form.Doc.ObjectSoup[Form.Doc.Root]);`  
`cat.EntryAcroForm.EntryFields.Add(`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`);`

This code snippet is taken from Annotations.cs line 987 in the Annotations example project.

`bool duplicatesFound = false;`  
[`CatalogElement`](../index.md)` cat = new `[`CatalogElement`](../index.md)`(Doc.ObjectSoup[Doc.Root]);`  
[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)` parent = field.FieldElement.EntryParent;`  
[`InteractiveFormElement`](../../../12-interactive/1439-interactiveformelement/index.md)` acroForm = cat.EntryAcroForm;`  
[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`> kids = parent != null ? parent.EntryKids : acroForm.EntryFields;`  
`Dictionary<string, List<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>> items = new Dictionary<string, List<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>>();`  
`foreach (var kid in kids) {`  
`  if (kid == null)`  
`    continue; // shouldn't really happen`  
`  string name = kid.EntryT;`  
`  if (!items.ContainsKey(name))`  
`    items[name] = new List<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>();`  
`  items[name].Add(kid);`  
`}`  
`foreach (KeyValuePair<string, List<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>> pair in items) {`  
`  if (pair.Value.Count > 1) {`  
`    duplicatesFound = true;`  
`    // shift field down to be a child of a new field node`  
`    `[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)` newField = new `[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`(cat);`  
`    newField.EntryKids = new `[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>(acroForm);`  
`    if (parent != null) {`  
`      parent.EntryKids.Add(newField);`  
`      newField.EntryParent = parent;`  
`    }`  
`    else {`  
`      acroForm.EntryFields.Add(newField);`  
`    }`  
`    foreach (`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)` twin in pair.Value) {`  
`      if (!string.IsNullOrEmpty(twin.EntryFT)) {`  
`        newField.EntryFT = twin.EntryFT;`  
`        twin.EntryFT = null;`  
`      }`  
`      if (!string.IsNullOrEmpty(twin.EntryT)) {`  
`        newField.EntryT = twin.EntryT;`  
`        twin.EntryT = null;`  
`      }`  
`      if (!string.IsNullOrEmpty(twin.EntryTU)) {`  
`        newField.EntryTU = twin.EntryTU;`  
`        twin.EntryTU = null;`  
`      }`  
`      if (twin.EntryFf.HasValue) {`  
`        newField.EntryFf = twin.EntryFf;`  
`        twin.EntryFf = null;`  
`      }`  
`      if (twin.EntryV != null) {`  
`        newField.EntryV = twin.EntryV;`  
`        twin.EntryV = null;`  
`      }`  
`      if (twin.EntryDV != null) {`  
`        newField.EntryDV = twin.EntryDV;`  
`        twin.EntryDV = null;`  
`      }`  
`      kids.Remove(twin);`  
`      newField.EntryKids.Add(twin);`  
`      twin.EntryParent = newField;`  
`    }`  
`  }`  
`}`  
`if ((refreshForm) && (duplicatesFound))`  
`  Doc.Form.Refresh();`  
`return duplicatesFound;`

This code snippet is taken from ValidationUtilities.cs line 83 in the ValidatePDF example project.

`ValidationLog validation = new ValidationLog();`  
`validation.Coverage = coverage;`  
`validation.Stack = new Stack<`[`ValidationStackNode`](../../../01-base/0008-validationstacknode/index.md)`>();`  
[`CatalogElement`](../index.md)` cat = new `[`CatalogElement`](../index.md)`(doc.ObjectSoup.Catalog);`  
`cat.Validate(validation);`  
`StreamObject trail = doc.ObjectSoup.Trailer;`  
`bool isCrossRef = Atom.GetItem(trail.Atom, "W") != null;`  
[`CrossReferenceStreamElement`](../../1058-crossreferencestreamelement/index.md)` crossRef = isCrossRef ? new `[`CrossReferenceStreamElement`](../../1058-crossreferencestreamelement/index.md)`(trail) : null;`  
[`FileTrailerElement`](../../1051-filetrailerelement/index.md)` fileTrailer = !isCrossRef ? new `[`FileTrailerElement`](../../1051-filetrailerelement/index.md)`(trail) : null;`  
[`Element`](../../../01-base/1086-element/index.md)` trailer = isCrossRef ? (`[`Element`](../../../01-base/1086-element/index.md)`)crossRef : (`[`Element`](../../../01-base/1086-element/index.md)`)fileTrailer;`  
`trailer.Validate(validation);`  
`if (doc.Encryption.Type != 0) {`  
`  validation.Start(trailer);`  
`  `[`EncryptionElement`](../../1064-encryptionelement/index.md)` encryption = crossRef != null ? crossRef.EntryEncrypt : fileTrailer.EntryEncrypt;`  
`  validation.ReportEntryVersion("Encryption.V", encryption.GetEntryVersion("V"));`  
`}`

`StringBuilder sb = validation.Log;`  
`HashSet<int> done = validation.Done;`  
`List<IndirectObject> missed = new List<IndirectObject>();`  
`foreach (IndirectObject io in doc.ObjectSoup) {`  
`  if ((io != null) && (io.ID != 0) && (!done.Contains(io.ID))) {`  
`    `[`Element`](../../../01-base/1086-element/index.md)` e = `[`ElementFactories.AutodetectFactory`](../../../01-base/0005-elementfactories/1-methods/01-autodetectfactory.md)`(new RefAtom(io), io, null);`  
`    if ((e is `[`ObjectStreamElement`](../../1054-objectstreamelement/index.md)`) || (e is `[`CrossReferenceStreamElement`](../../1058-crossreferencestreamelement/index.md)`) || (e is `[`LinearizationParameterElement`](../../../14-document/1688-linearizationparameterelement/index.md)`)) {`  
`      e.Validate(validation);`  
`      done = validation.Done;`  
`    }`  
`  }`  
`}`  
`if (reportOrphans) {`  
`  foreach (IndirectObject io in doc.ObjectSoup) {`  
`    if ((io != null) && (io.ID != 0) && (!done.Contains(io.ID)))`  
`      missed.Add(io);`  
`  }`  
`  if (missed.Count > 0) {`  
`    HashSet<int> refOnlyObjects = new HashSet<int>();`  
`    Dictionary<int, HashSet<int>> references = new Dictionary<int, HashSet<int>>();`  
`    foreach (IndirectObject io in doc.ObjectSoup) {`  
`      if (io != null) {`  
`        bool hasContent = false;`  
`        FindAllReferences(io.ID, io.Atom, references, ref hasContent);`  
`        if (!hasContent)`  
`          refOnlyObjects.Add(io.ID);`  
`      }`  
`    }`  
`    foreach (IndirectObject io in missed) {`  
`      HashSet<int> set = null;`  
`      references.TryGetValue(io.ID, out set);`  
`      if (set == null)`  
`        continue; // object not referenced by anything - ignore`  
`      if (refOnlyObjects.Contains(io.ID))`  
`        continue; // only reference atoms - simply a stop en route to other items`  
`      sb.AppendLine("Missed ID: " + io.ID.ToString() + ": " + IndirectObjectDescription(io));`  
`      foreach (var id in set)`  
`        sb.AppendLine(" Referenced by ID: " + id.ToString() + ": " + IndirectObjectDescription(doc.ObjectSoup[id]));`  
`    }`  
`  }`  
`}`  
`string header = "PDF Version: " + GetVersion(validation.Version) + "\r\n";`  
`if (validation.Version.HasFlag(PDFVersion.AdobeUndocumented))`  
`  header += "PDF Uses Undocumented Extensions\r\n";`  
`if (validation.Version.HasFlag(PDFVersion.PDF20Deprecated)) {`  
`  header += "PDF Uses PDF 2.0 Deprecated Features\r\n";`  
`  foreach (string feature in validation.Deprecated)`  
`    header += " - " + feature + "\r\n";`  
`}`  
`header += "\r\n";`  
`return header + sb.ToString();`
