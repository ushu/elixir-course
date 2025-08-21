#let questions = (
  (
    // 1
    question: [Comment affiche-t-on un texte à l’écran en Elixir ?],
    choices: (
      [```elixir print("Hello")```],
      [```elixir echo("Hello")```],
      [```elixir IO.puts("Hello")```],
      [```elixir Console.log("Hello")```],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 2
    question: [Lequel de ces éléments est une liste en Elixir ?],
    choices: (
      [```elixir {1, 2, 3}```],
      [```elixir [1, 2, 3]```],
      [```elixir (1, 2, 3)```],
      [```elixir <1, 2, 3>```],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 3
    question: [
      Que se passe-t-il si on fait : ```elixir x = 1```

      puis ```elixir x = 2``` ?],
    choices: (
      [x vaut toujours 1],
      [une erreur],
      [x vaut 1 et 2 en même temps],
      [x vaut 2, mais la valeur 1 n’a pas changé],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 4
    question: [Que représente `:ok` en Elixir ?],
    choices: (
      [Un atome (constante nommée)],
      [Un booléen],
      [Une fonction spéciale],
      [Un raccourci pour `true`],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 5
    question: [
      Quelle est la valeur de `y` après :

      ```elixir [x, y] = [1, 2]``` ?],
    choices: (
      [Erreur],
      [1],
      [2],
      [`[1, 2]`],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 6
    question: [Que se passe-t-il avec : ```elixir [a, b] = [1]``` ?],
    choices: (
      [```elixir a = 1``` et ```elixir b = nil```],
      [Erreur de correspondance (*MatchError*)],
      [```elixir a = [1]```, ```elixir b = []```],
      [```elixir a = 1```, ```elixir b = 0```],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 7
    question: [
      Quelle est la sortie ?
      ```elixir
      defmodule M do
        def double(x), do: x * 2
      end
      IO.puts(M.double(5))
      ```
    ],
    choices: (
      [Erreur],
      [5],
      [10],
      [25],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 8
    question: [
      Quelle est la sortie ?

      ```elixir
      Enum.map([1, 2, 3], fn x -> x + 1 end)
      ```
    ],
    choices: (
      [`[1, 2, 3]`],
      [`[2, 2, 2]`],
      [4],
      [`[2, 3, 4]`],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 9
    question: [
      Quelle est la sortie ?

      ```elixir
      [1, 2, 3]
      |> Enum.sum()
      ```
    ],
    choices: (
      [```elixir[1, 2, 3]```],
      [Erreur],
      [6],
      [123],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 10
    question: [Quelle expression retourne `true` ?],
    choices: (
      [```elixir if 0 do 0 end```],
      [```elixir if true do true end```],
      [```elixir if nil do true end```],
      [```elixir if false do true end```],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 11
    question: [
      Quelle est la sortie ?

      ```elixir
      defmodule M do
        def fact(0), do: 1
        def fact(n), do: n * fact(n - 1)
      end
      IO.puts(M.fact(3))
      ```
    ],
    choices: (
      [3],
      [6],
      [9],
      [Erreur],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 12
    question: [Quelle est la valeur de ```elixir elem({:ok, 42}, 1)``` ?],
    choices: (
      [`:ok`],
      [`{:ok, 42}`],
      [42],
      [Erreur],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 13
    question: [Que fait la fonction ```elixir spawn``` en Elixir ?],
    choices: (
      [Crée un nouveau processus léger],
      [Exécute du code plus vite],
      [Crée un thread natif du système],
      [Crée une fonction anonyme],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 14
    question: [
      Que se passe-t-il avec :

      ```elixir
      send(self(), :hello)

      receive do
        msg -> msg
      end
      ```
    ],
    choices: (
      [Erreur],
      [Bloque indéfiniment],
      [```elixir nil```],
      [```elixir :hello```],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 15
    question: [
      Quelle est la sortie ?

      ```elixir
      [1 | [2, 3]]
      ```
    ],
    choices: (
      [```elixir [[1], 2, 3]```],
      [```elixir [1, 2, 3]```],
      [```elixir [1 | [2, 3]]```],
      [Erreur],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 16
    question: [
      Quelle est la valeur de :

      ```elixir
        %{:a => 1, :b => 2}[:b]
      ```
    ],
    choices: (
      [```elixir :b```],
      [```elixir {:b, 2}```],
      [2],
      [`nil`],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 17
    question: [
      Dans un graphe représenté par une map:

      ```elixir
      %{ a: [:b, :c] }
      ```

      que représente ```elixir :b``` ?
    ],
    choices: (
      [Un poids],
      [Un voisin de `a`],
      [Un processus],
      [Une clé inconnue],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 18
    question: [
      Quelle est la sortie ?
      `Enum.filter([1, 2, 3, 4], fn x -> rem(x, 2) == 0 end)`
    ],
    choices: (
      [```elixir [2, 4]```],
      [```elixir [1, 3]```],
      [```elixir [0, 2, 4]```],
      [Erreur],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 19
    question: [En Elixir, laquelle de ces comparaisons est vraie ?],
    choices: (
      [```elixir 1 == :1```],
      [```elixir nil > 0```],
      [```elixir true != false```],
      [```elixir :ok < :error```],
    ),
    horizontal: false,
    sameline: false,
  ),
  (
    // 20
    question: [
      Quelle est la sortie ?

      ```elixir
      [1, 2, 3]
      |> Enum.map(fn x -> x * x end)
      |> Enum.sum()
      ```
    ],
    choices: (
      [6],
      [9],
      [12],
      [14],
    ),
    horizontal: false,
    sameline: false,
  ),
)
