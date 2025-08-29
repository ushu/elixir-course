#let questions = (
  (
    // 1 (cours)
    question: [Que renvoie `self()` ?],
    choices: (
      [Nom du module],
      [PID courant],
      [Nom du nœud],
      [PID parent],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 2 (cours)
    question: [Quelles fonctions pour une boucle de messages ?],
    choices: (
      [```elixir spawn/1 ``` et ```elixir send/2 ```],
      [```elixir send/2 ``` et ```elixir receive ```],
      [```elixir IO.puts/1 ``` et ```elixir receive ```],
      [```elixir Task.async/1 ``` et ```elixir Task.await/1 ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 3 (cours)
    question: [Bonne syntaxe pour envoyer à `pid` ?],
    choices: (
      [```elixir pid <- {:hello, 42} ```],
      [```elixir send(pid, {:hello, 42}) ```],
      [```elixir Process.send(pid) ```],
      [```elixir deliver(pid, {:hello, 42}) ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 4 (cours)
    question: [Effet de `Process.link(pid)` ?],
    choices: (
      [Canal de messages],
      [Cycle de vie lié],
      [Monitoring unidirectionnel],
      [Priorité CPU],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 5 (cours)
    question: [Format message `monitor` quand stop ?],
    choices: (
      [```elixir {:DOWN, ref, :process, pid, reason} ```],
      [```elixir {:EXIT, pid, reason} ```],
      [```elixir {:DOWN, pid, ref, reason} ```],
      [```elixir {:EXIT, ref, :process, pid} ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 0,
  ),
  (
    // 6 (cours)
    question: [Retour de `Process.monitor(pid)` ?],
    choices: (
      [```elixir pid ```],
      [```elixir reference() ```],
      [Booléen],
      [```elixir %Monitor{} ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 7 (cours)
    question: [Avantage de `Task.async/await` sur `spawn` ?],
    choices: (
      [Résultats + timeout facile],
      [Moins mémoire],
      [Exécute en C],
      [Ordre garanti],
    ),
    horizontal: false,
    sameline: false,
    correct: 0,
  ),
  (
    // 8 (cours)
    question: [Ordre de `Task.async_stream/3` par défaut ?],
    choices: (
      [Ordre d’entrée],
      [Ordre de fin des tâches],
      [Aléatoire],
      [Trié par durée],
    ),
    horizontal: false,
    sameline: false,
    correct: 0,
  ),
  (
    // 9 (cours)
    question: [API pour map parallèle avec limite ?],
    choices: (
      [```elixir Task.async/1 ```],
      [```elixir Task.async_stream/3 ```],
      [```elixir Stream.map/2 ```],
      [```elixir Enum.map/2 ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 10 (cours)
    question: [Effet de `max_concurrency: 4` ?],
    choices: (
      [4 tâches au total],
      [4 simultanées max],
      [4 nœuds distribués],
      [Priorité 4],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 11 (cours)
    question: [Callbacks classiques d’un GenServer ?],
    choices: (
      [```elixir handle_info/2 ``` et ```elixir handle_call/3 ```],
      [```elixir handle_cast/2 ``` et ```elixir handle_call/3 ```],
      [```elixir init/1 ``` et ```elixir terminate/2 ```],
      [```elixir start_link/1 ``` et ```elixir stop/1 ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 12 (cours)
    question: [Retour valide de `init/1` ?],
    choices: (
      [```elixir :ok ```],
      [```elixir {:ok, state} ```],
      [```elixir {:noreply, state} ```],
      [```elixir {:reply, state} ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 13 (cours)
    question: [Rôle d’un superviseur ?],
    choices: (
      [Planif CPU],
      [Redémarrer enfants],
      [Compiler modules],
      [GC],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 14 (cours)
    question: [Stratégie qui relance seul le crashé ?],
    choices: (
      [```elixir :rest_for_one ```],
      [```elixir :one_for_all ```],
      [```elixir :one_for_one ```],
      [```elixir :simple_one_for_one ```],
    ),
    horizontal: false,
    sameline: false,
    correct: 2,
  ),
  (
    // 15 (tech)
    question: [Que renvoie `Task.async_stream/3` ?],
    choices: (
      [Liste brute],
      [Flux ```elixir {:ok, res} / {:exit, reason} ```],
      [PIDs],
      [Task structs],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 16 (tech)
    question: [Effet de `Process.unlink(pid)` ?],
    choices: (
      [Détruit la tâche],
      [Supprime le lien],
      [Stoppe le monitor],
      [Envoie vers handle_info],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 17 (tech)
    question: [Différence cast vs call ?],
    choices: (
      [```elixir cast = async, call = sync ```],
      [cast crée lien, call crée monitor],
      [cast = erreurs, call = succès],
      [Aucune],
    ),
    horizontal: false,
    sameline: false,
    correct: 0,
  ),
  (
    // 18 (tech)
    question: [Usage de Task.Supervisor ?],
    choices: (
      [Superviser des tâches isolées],
      [Mesurer perf],
      [Convertir Task en GenServer],
      [Jamais],
    ),
    horizontal: false,
    sameline: false,
    correct: 0,
  ),
  (
    // 19 (tech)
    question: [Que fait `Task.await/2` si la tâche crash ?],
    choices: (
      [Renvoie l’ancien résultat],
      [Lève une exception],
      [Retourne ```elixir {:error, reason} ```],
      [Ignore l’erreur],
    ),
    horizontal: false,
    sameline: false,
    correct: 1,
  ),
  (
    // 20 (tech)
    question: [Quel est le bon cas d'usabe pour ```elixir Task.sync_stream``` ?],
    choices: (
      [IO massif avec limite parallélisme],
      [Serveur long avec receive],
      [Stocker un état persistant],
      [Tracer sorties avec :dbg],
    ),
    horizontal: false,
    sameline: false,
    correct: 0,
  ),
)
