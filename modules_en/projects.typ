// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry
#let metadata = toml("../metadata.toml")
#let mono = text.with(font: metadata.layout.fonts.mono_font)


#cv-section("Projects")

#cv-entry(
  title: [Voluntary contribution to several open source projects on github.com],
  date: [2022 - Present],
  description: list(
    [Creation of templates for the Typst language],
    [Contribution to #link("https://github.com/gosom/google-maps-scraper")[#mono[google maps scraper]] — codebase cleanup],
    [Contribution to #link("https://github.com/phoenixframework/phoenix")[#mono[phoenixframework]] — codebase cleanup],
    [Contribution to #link("https://github.com/nautechsystems/nautilus_trader")[#mono[nautilus_trader]]],
    [Contribution to #link("https://github.com/nicholassm/disruptor-rs")[#mono[disruptor-rs]]]
  ),
)