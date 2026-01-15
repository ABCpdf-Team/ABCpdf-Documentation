# Manual HTML → Markdown Conversion Playbook (for AI agents)

This guide explains how to manually convert ABCpdf docs HTML pages to Markdown without scripts, matching the conventions established in this repo.

## Scope
- Input: Any HTML page under the repo (e.g., `1-introduction/*.htm`, `4-examples/*.htm`, `5-abcpdf/doc/**/*.htm`).
- Output: A Markdown file under a mirrored path rooted at `markdown/`.

## Output Path & Naming
- Mirror the source folder structure under `markdown/`.
  - Example: `4-examples/02-textflow.htm` → `markdown/4-examples/text-flow-example.md`.
  - Example: `5-abcpdf/doc/1-methods/addimageurl.htm` → `markdown/5-abcpdf/doc/1-methods/addimageurl-function.md`.
- Filename: derive from the HTML `<title>` text.
  - Lowercase, dash-separated slug; keep short and readable.
  - Remove punctuation; keep meaningful words (e.g., "AddImageUrl Function" → `addimageurl-function.md`).

## Page Structure
- Add an H1 as the very first line using the page title.
- Preserve meaningful sectioning; prefer these headings when appropriate:
  - `## Setup`, `## Doc`, `## Adding` or `## Add`, `## Save`, `## Results`, `## Notes`, `## Example`, `## Features`.
- Keep narrative text concise. Convert basic HTML (p, ul/ol, h2-h4) to Markdown equivalents.

## Code Blocks
- Use fenced blocks with language tags and preserve indentation:
  - C#: ```csharp ... ```
  - VB.NET: ```vbnet ... ```
  - XML/XAML: ```xml ... ```
- Keep the sample code faithful; do not alter semantics.
- Accept Windows/IIS specifics (e.g., `Server.MapPath(...)`) as-is.

## Images (Results)
- Replace plain bullet references with embedded images using correct relative paths.
- The `images/` folder is at repo root. Compute depth from the destination Markdown folder to repo root, then append `/images/...`.
  - From `markdown/4-examples/*.md`: `../../images/...`
  - From `markdown/5-abcpdf/doc/1-methods/*.md`: `../../../../images/...`
- Format:
  - Single page: `![file.pdf](REL/images/pdf/file.pdf.png) — short caption`
  - Multi-page: list all: `file.pdf`, `file.pdf2.png`, `file.pdf3.png`, etc.

## Links
- Leave existing relative links to other HTML pages intact for now (e.g., method/property references).
- Optionally, after Markdown counterparts exist, normalize to point to the corresponding `.md` files.

## Minimal Workflow (per file)
1. Read the source `.htm`.
2. Extract the `<title>` and create a slugged filename.
3. Create destination folder under `markdown/` mirroring the source path.
4. Write content:
   - H1 from the title.
   - Convert body text to Markdown sections.
   - Convert code samples to fenced `csharp` / `vbnet` blocks.
   - Add a `## Results` section with embedded images using correct relative paths.
5. Save.

## Examples
- `4-examples/02-textflow.htm` → `markdown/4-examples/text-flow-example.md`
  - Results:
    - `![textflow.pdf](../../images/pdf/textflow.pdf.png) — Page 1`
    - `![textflow.pdf](../../images/pdf/textflow.pdf2.png) — Page 2`
- `5-abcpdf/doc/1-methods/addimageurl.htm` → `markdown/5-abcpdf/doc/1-methods/addimageurl-function.md`
  - Result:
    - `![htmlimport.pdf](../../../../images/pdf/htmlimport.pdf.png) — htmlimport.pdf`

## Quality Checklist
- Title present as H1; sections use `##`.
- Code blocks fenced and properly labeled (`csharp`, `vbnet`, `xml`).
- Images render inline with correct relative paths.
- No stray HTML entities like `&nbsp;` in code.
- Links remain functional (HTML or MD depending on availability).

## Done Definition
- The Markdown file exists at the mirrored `markdown/...` path.
- Code samples render correctly and are readable.
- “Results” images display inline.
- The page is consistent with prior converted examples in tone and structure.
