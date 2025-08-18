theme: Business Class, 2
autoscale: true

# Partie 1

# Contexte & Historique

---

# Aux origines

### Erlang chez Ericsson (1980s)

- Créé chez Ericsson pour les systèmes télécom robustes, tolérance aux pannes, "run forever"
- VM BEAM + OTP : processus légers, supervision, distribution
- Passage en open-source en 1998

![right fit](https://img.yumpu.com/29689707/1/500x640/race-open-services-architecture-erlang-a-new-programming-.jpg)

^ Cette image illustre bien l’ambition initiale d’Erlang — la robustesse télécom durable.

---

# José Valim

### Créateur d’Elixir

- Initialement développeur Ruby, frustré par les limites du langage concernant l'exécution concurrente
- Crée Elixir en 2012 : syntaxe moderne, métaprogrammation, tooling meilleur
- Compilé sur la VM BEAM → interopérabilité avec Erlang

![right 100% corner-radius(20)](https://pbs.twimg.com/profile_images/667973757181431808/IdQgSAH__400x400.jpg)

^ Présenter Valim permet de mettre un visage humain derrière le projet : passion technique, pragmatisme Ruby-like.

---

# Adoption croissante

- Un des langage les plus appréciés par ses développeurs
- Commence à être utilisé chez Apple, Google et d'autres grandes entreprises
- Discord : chat en temps réel à grande échelle, backend massif reposant sur Elixir
- Autres usages : IoT, APIs hautes-disponibilité, plateformes concurrentielles

^ Discord est un cas marquant — millions d’utilisateurs simultanés, fiabilité indispensable.

---

# Raisons d'apprendre Elixir

- Découvrir une autre façon de programmer: la programmation _fonctionnelle_
- Découvrir la programmation concurrente

_Elixir fera de vous de meilleurs programmeurs dans l'absolu, y compris en Python et dans tout autre langage que vous explorerez car il vous apprendra à "penser" comme un informaticien_

---

# Partie 2

## Syntaxe & Premiers pas

---

# Prérequis

## installer LiveBook

visitez https://livebook.dev

![inline](images/livebook.dev.png)

---

# LiveBook ?

- c'est le "Jypyter d'Elixir"
- nous allons l'utiliser pour illustrer ce cours
- ... et vous découvrirez un outil _beaucoup plus ergonomique_ que Jupyter Labs 😉

![inline 100%](images/livebook-logo.png)

_Pour l'instant, je vais vous monter comment l'utiliser, puis ce sera **votre tour** !_

---

# Premier contact avec Elixir

Comme le veut la tradition, écrivons un exemple de "Hello World" en Elixir:

```elixir
IO.puts("Hello, world !")
```

ce qui donne, dans LiveBook:

![inline 100%](images/hello-world.png)

---

# Premier contact avec Elixir

### (suite)

```elixir
IO.puts("Hello, world !")
```

- nous avons appelé la fonction `puts/1`
- du module `IO`
- en lui passant en paramètre la chaîne de caractères `"Hello, world"` (les données)

_Vous avez sous les yeux tous les éléments d'un programme Elixir: une suite de **fonctions**, groupées en **modules** auxquelles on passe des **données** et qui retournent un résultat_

---

# Structure d'un programme
