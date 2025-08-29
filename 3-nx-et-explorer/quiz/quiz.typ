#import "@preview/examit:0.1.1": *
#import "questions.typ": questions

#set text(size: 10pt)
#show raw: set text(font: "Fira Code", features: (calt: 0))

#show: examit.with(
  questions: questions,

  // Métadonnées
  title: [UE12P25 – AP],
  subtitle: "Programmation Elixir",
  date: "Quiz du cours #2",

  // Mise en page
  margin: (left: 20mm, top: 10mm, bottom: 12mm, right: 20mm),
  cols: 2,
  gutter: 25mm,
  lang: "fr",
  font: "New Computer Modern",
  namebox: "left",
  answerlinelength: 10cm,
  defaultpoints: 1,
  extrapicturebox: false,

  // Réglages d’examen
  instructions: [
    #v(0.5em)
    *Cochez une seule réponse par question.*

    _Questions 1–13 : rappels de cours. 14–20 : un cran plus techniques._
    #v(1em)
  ],
)
