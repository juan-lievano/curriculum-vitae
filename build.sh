#!/usr/bin/env bash
# Rebuild the CV PDFs from the .tex sources.
#
#   ./build.sh        # build both languages
#   ./build.sh en     # English only
#   ./build.sh es     # Spanish only
#
# Compiles into build/ (git-ignored) and copies the fresh PDFs to the stable
# paths the landing page serves: cv-en.pdf / cv-es.pdf.

set -euo pipefail
cd "$(dirname "$0")"

build_en() {
  latexmk -pdf -outdir=build jplk_cv_english.tex
  cp build/jplk_cv_english.pdf cv-en.pdf
  echo "✓ cv-en.pdf updated"
}

build_es() {
  latexmk -pdf -outdir=build jplk_cv_espanol.tex
  cp build/jplk_cv_espanol.pdf cv-es.pdf
  echo "✓ cv-es.pdf updated"
}

case "${1:-all}" in
  en)  build_en ;;
  es)  build_es ;;
  all) build_en; build_es ;;
  *)   echo "usage: $0 [en|es|all]" >&2; exit 1 ;;
esac
