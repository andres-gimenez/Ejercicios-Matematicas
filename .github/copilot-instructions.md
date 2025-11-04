## Copilot instructions for EjerciciosMatematicas

This repo is a collection of LaTeX and Typst source materials for math exercises and notes (organized by course/grade). The guidance below helps an AI coding agent make useful, low-risk edits quickly.

1. Quick context
   - Project type: mostly LaTeX (`.tex`) and Typst (`.typ`) source files arranged in topic directories (e.g. `bach_2/`, `Aritmetica/`, `Pruebas/`).
   - Entrypoints: many folders use `main.tex` as the compilation entrypoint. Example: `Aritmetica/1.Multiplicaciones/main.tex`.
   - Authoring: supplementary content typically lives in `include/` subfolders; images are in `img/`.

2. How to build (manual steps discovered in `README.md`)
   - Recommended: install TeX Live and a GUI editor (commands are in the repo README). Typical steps on Debian/Ubuntu are:

```bash
sudo apt-get install texlive-full texstudio texmaker
# install nonfree fonts if required (repo README shows getnonfreefonts)
```

   - Typical compile command (run inside a folder containing `main.tex`):

```bash
latexmk -pdf -silent main.tex
# or, if latexmk isn't available: pdflatex main.tex (repeat as needed)
```

   - Note: the repo contains generated artifacts (`main.aux`, `main.fls`, `main.fdb_latexmk`) — these are build outputs and should not be edited or committed.

3. Project structure & conventions (explicit, discoverable)
   - Directory pattern: each topic/section folder contains a `main.tex` (entry), an `include/` folder (modular source), and an `img/` folder for images. Example path: `bach_2/8 Limite de funciones y continuidad/Ejercicios-Límites3-LHopital.typ` (Typst file) and `bach_2/9 Derivadas/Tabla de derivadas.typ`.
   - Typst: `.typ` files are present alongside `.tex` files. There is no repository-wide build script for Typst — treat `.typ` files as independent source documents. If you must build them, ensure `typst` CLI is available in the environment.
   - Generated files: do not modify `*.aux`, `*.fls`, `*.fdb_latexmk`, and other latex intermediates — they are created by compilation tools.

4. Editing patterns an AI should follow
   - Make localized edits: change text in chapter/source files inside `include/` or the immediate `main.tex`. Avoid wide refactors across many `.tex` files without a human in the loop.
   - Images: add/update files under `img/` and reference them from `main.tex` or includes.
   - Typo fixes & small content updates: safe to apply in `.tex`/`.typ` files; run a local compile to verify rendering if possible.

5. Integration points & external deps
   - External dependencies are primarily TeX packages and system fonts. The README documents installing TeXLive and `getnonfreefonts` for fonts.
   - Python is used for some helper tooling (`python-pygments` referenced in README) — there is no visible Python app or tests in the repo root.

6. Files and locations to reference in pull requests
   - Root README: `/README.md` (contains install/build hints).
   - Example entrypoints: `Aritmetica/1.Multiplicaciones/main.tex`, `bach_2/8 Limite de funciones y continuidad/Ejercicios-Límites3-LHopital.typ`.

7. Practical examples for Copilot edits
   - Fix a spelling/notation error in `include/` files and compile the corresponding `main.tex` to confirm layout.
   - Add a new exercise: create a new `.tex` file in the relevant topic folder, update that folder's `main.tex` (usually by adding \input{include/<file>}) and avoid committing `*.aux`/`*.fdb_latexmk`.

8. Do/Don't quick checklist
   - Do: edit `main.tex` or files in `include/` for content updates; reference images in `img/`; mention the folder path in PR titles where changes apply.
   - Don't: commit generated LaTeX artifacts; run repo-wide refactors without running a sample compile of the affected `main.tex`.

If a section here is ambiguous or you want more automation (compile scripts, CI), tell me which directories you edit most and I will add a compact, safe workflow for building and validating those directories.
