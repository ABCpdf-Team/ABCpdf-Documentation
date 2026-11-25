# Help sync

This repository is a Markdown copy of the ABCpdf .NET help on websupergoo.com, kept up to date by the **Sync help**
workflow (`.github/workflows/sync-help.yml`), which runs `sync-help.ps1` once a day.

- It asks the site's documentation service for its list of pages (`https://www.websupergoo.com/mcp/api/pages`),
  each with a SHA-256 of its Markdown, and keeps the help pages (under `helppdfnet/source/`).
- A page that is new, or whose hash differs from the one recorded, is fetched whole (`/mcp/api/page?id=...`). Pages
  gone from the list are deleted. The hashes come from the same index as the pages, so a page is fetched exactly
  when its Markdown changes - an edit to the help, or an improvement to the conversion.
- The images the pages show (those under `helppdfnet/source/`) are copied too. Each run asks the site for each one
  only if it has changed since its recorded date (an unchanged image gets a short "not modified" answer), and
  deletes images no page shows any more.
- `README.md` and `LICENSE.md` are the repository's own: the sync never writes or deletes them (in any case, so
  `License.md` too). The help's start page is `index.md`.
- `.sync/pages.tsv` records each page's id, hash, file and images; `.sync/help-images.tsv` each image's date and
  file. Don't edit them by hand.
- Links between help pages, and to their images, are relative. Links to pages the service doesn't have (help pages
  the help's contents doesn't list, such as sample projects' source) and to the rest of the site go to
  websupergoo.com.

**Full refresh:** Actions > Sync help > Run workflow, ticking "Fetch every page again". Every page is fetched (about
90 minutes) and stray .md files and images are deleted (not the repository's own README.md and LICENSE.md, or anything in a
folder starting with a dot). It isn't normally needed: changes to the conversion now arrive by themselves.

To run it by hand (PowerShell 7), from the repository's top folder: `pwsh .github/scripts/sync-help.ps1` (add `-Full`
for a full refresh).
