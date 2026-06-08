# CV / Hoja de vida — Juan Pablo Liévano Karim

LaTeX sources and PDFs of my CV in English and Spanish, published with GitHub Pages.

## Shared link

The published page lives on GitHub Pages (see the repo's *Pages* section). It opens in
English by default with an **English / Español** toggle. You can also deep-link a language:

- `…/#en` — English
- `…/#es` — Spanish

Direct PDFs: `cv-en.pdf` and `cv-es.pdf`.

## Sources

- `jplk_cv_english.tex` → `cv-en.pdf`
- `jplk_cv_espanol.tex` → `cv-es.pdf`

The two are maintained independently (a CV is not a literal translation). When you edit
one language, remember to update the other if the change applies to both.

## How to update

1. Edit the relevant `.tex`.
2. Compile with latexmk (output lands in `build/`):
   ```sh
   latexmk -pdf -outdir=build jplk_cv_english.tex   # or jplk_cv_espanol.tex
   ```
3. Copy the fresh PDF to the stable path the page serves:
   ```sh
   cp build/jplk_cv_english.pdf cv-en.pdf           # or build/jplk_cv_espanol.pdf cv-es.pdf
   ```
4. Commit and push:
   ```sh
   git add cv-en.pdf cv-es.pdf jplk_cv_english.tex jplk_cv_espanol.tex
   git commit -m "Update CV"
   git push
   ```

The public link doesn't change — GitHub Pages republishes the PDFs automatically.

## Files

- `jplk_cv_english.tex`, `jplk_cv_espanol.tex` — LaTeX sources (moderncv template).
- `cv-en.pdf`, `cv-es.pdf` — published PDFs (what gets shared).
- `index.html` — landing page with the language toggle.
- `papers_conferences.md` — notes.
- `build/` — build artifacts (git-ignored).
