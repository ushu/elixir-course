#import "@preview/examit:0.1.1": *
#import "questions.typ": questions

#show: examit.with(
  questions: questions,

  // Métadonnées
  title: [UE12P25 – AP],
  subtitle: "Programmation Elixir",
  date: "Quiz du cours #1",

  // Mise en page
  margin: (left: 20mm, top: 10mm, bottom: 12mm, right: 20mm),
  cols: 2,
  gutter: 20mm,
  lang: "fr",
  font: "New Computer Modern",

  // Réglages d’examen
  instructions: [
    *Cochez une seule réponse par question.*

    _Les questions 1–12 sont plutôt accessibles, 13–20 un peu plus techniques._
  ],
  namebox: "left",
  answerlinelength: 10cm,
  defaultpoints: 1,
  extrapicturebox: false,
)

