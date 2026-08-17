// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry
#let metadata = toml("../metadata.toml")
#let mono = text.with(font: metadata.layout.fonts.mono_font)


#cv-section("Progetti")

#cv-entry(
  title: [Contributo volontario a diversi progetti open source su github.com],
  date: [2022 - Present],
  description: list(
    [Creazione di template per linguaggio di programmazione typst],
    [Contributo a #link("https://github.com/gosom/google-maps-scraper")[#mono[google maps scraper]] pulizia codebase],
    [Contributo a #link("https://github.com/phoenixframework/phoenix")[#mono[phoenixframework]] pulizia codebase],
    [Contributo a #link("https://github.com/nautechsystems/nautilus_trader")[#mono[nautilus_trader]]],
    [Contributo a #link("https://github.com/nicholassm/disruptor-rs")[#mono[disruptor-rs]]]
  ),
)
