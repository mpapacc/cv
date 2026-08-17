# AGENTS.md

Typst-based multilanguage CV (resume + cover letter) built with the Typst
package `@preview/brilliant-cv:3.1.2`. Requires the `typst` CLI.

## Build

```sh
make build   # typst c cv.typ cv-it.pdf && typst c --input language=en cv.typ cv-en.pdf
```

The default language (`language = "it"` in `metadata.toml`) produces
`cv-it.pdf`; `--input language=en` produces `cv-en.pdf`. Any supported
language code works the same way.

## Structure

- `metadata.toml` — central config: default `language`, personal info, layout,
  and a `[lang.<code>]` block (header quote, footer text) per language. It
  carries a `#:schema` annotation pointing to the brilliant-cv schema.
- `cv.typ` / `letter.typ` — entrypoints. They slice `metadata.language`
  (overridable via `sys.inputs.at("language")`) to include content files.
- `modules_<lang>/` — per-language content. There is one folder per language:
  de, en, fr, it, zh, each containing the six modules named in `cv.typ`
  (`education`, `professional`, `projects`, `certificates`, `publications`,
  `skills`).
- `assets/` — photos, signature, logos, `publications.bib` (referenced by the
  publications module).

## Conventions & gotchas

- `metadata.toml` `language` must match a `modules_<lang>` folder suffix and a
  `[lang.<code>]` block. Adding a language means: create the folder, add the
  `[lang.<code>]` block (and a `[lang.non_latin]` font entry for non-Latin
  scripts), then translate all six modules.
- When adding content (a job, project, etc.), update the matching module in
  **every** language folder; the other languages share metadata but not content.
- `letter.typ` is a template with placeholder values ("ABC Company", "Your
  Address Here", sample dates) — replace those before sending.
- Fonts referenced in `metadata.toml` (`layout.fonts`): Source Sans 3, Roboto,
  and Heiti SC for non-Latin. `typst` must resolve these locally.
- `cv.pdf` committed in the repo is stale — it is not produced by `make build`
  (outputs are `cv-it.pdf`/`cv-en.pdf`). Regenerate or ignore it rather than
  hand-editing.