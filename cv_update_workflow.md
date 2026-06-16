# CV — hosting & update workflow

## Where it lives

- **Public link (share this):** https://juan-lievano.github.io/curriculum-vitae/
  - Opens English by default, with an **English / Español** toggle.
  - Deep-link a language: `…/curriculum-vitae/#en` or `…/#es`.
  - Direct PDFs: `…/cv-en.pdf` and `…/cv-es.pdf`.
- **Repo (backup):** https://github.com/juan-lievano/curriculum-vitae (public)
- Served by **GitHub Pages** from the `main` branch root. The link never changes
  as long as the username (`juan-lievano`) and repo name (`curriculum-vitae`) stay the same.

## Sources

- `jplk_cv_english.tex` → `cv-en.pdf`
- `jplk_cv_espanol.tex` → `cv-es.pdf`

The two languages are maintained independently (a CV is not a literal translation).
When a change applies to both, remember to edit both files.

## Privacy decision

The **public** PDFs intentionally contain **no phone and no email** — people contact
me only through channels they already have. If a version *with* contact info is ever
needed for an actual application, build it locally and do **not** commit it (keep it
off the public repo).

## How to update

1. Edit the relevant `.tex`.
2. Rebuild the PDFs (compiles into `build/` and copies to `cv-en.pdf` / `cv-es.pdf`):
   ```sh
   ./build.sh        # both languages
   ./build.sh en     # English only  (or: ./build.sh es)
   ```
3. Commit and push:
   ```sh
   git add -A && git commit -m "Update CV" && git push
   ```

GitHub Pages rebuilds in ~1 min; the public link stays identical.

## Notes

- `build/`, macOS junk, and any `*_backup_*` files are git-ignored (see `.gitignore`).
- `index.html` is the landing page with the language toggle — no need to touch it
  when updating CV content; it just embeds `cv-en.pdf` / `cv-es.pdf`.
- The `gh` CLI is installed and logged in as `juan-lievano`. Recreating the repo
  (full history wipe) requires the `delete_repo` token scope:
  `gh auth refresh -h github.com -s delete_repo`.
