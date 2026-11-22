# Help sync

This repository is a Markdown copy of the ABCpdf .NET help on websupergoo.com, kept up to date by the **Sync help**
workflow (`.github/workflows/sync-help.yml`), which runs `sync-help.ps1` once a day.

- It reads the site's sitemap and keeps the pages under `/helppdfnet/source/`.
- A page that is new, or whose date in the sitemap has changed, is fetched as Markdown from the site's MCP service
  (`https://www.websupergoo.com/mcp`, its fetch tool). Pages gone from the sitemap are deleted.
- `README.md` is a copy of the help's start page (`index.md`), for GitHub's front page.
- The images the pages show (those under `/helppdfnet/source/`) are copied too. Each run asks the site for each one
  only if it has changed since its recorded date (an unchanged image gets a short "not modified" answer), and
  deletes images no page shows any more.
- `.sync/help-pages.tsv` records each page's address, the date it was fetched at, its file and its images;
  `.sync/help-images.tsv` each image's date and file. Don't edit them by hand.
- Links between help pages, and to their images, are relative. Links to other site pages go to websupergoo.com.

**Full refresh:** Actions > Sync help > Run workflow, ticking "Fetch every page again". Every page is fetched (about
90 minutes) and stray .md files and images are deleted (not README.md, LICENSE.md or anything in a folder starting with a dot).
Use it after the conversion to Markdown changes, or if pages look out of date.

**Limitations:** the sitemap's dates and the MCP service's index are updated separately, so a page changed just
before the night's index build can be fetched before its new version is in the index; it is then out of date until
it changes again or a full refresh. Changes to the conversion alone don't change any dates. A page too long for one
fetch is put together from its sections, which loses its anchors.

To run it by hand (PowerShell 7), from the repository's top folder: `pwsh .github/scripts/sync-help.ps1` (add `-Full`
for a full refresh).
