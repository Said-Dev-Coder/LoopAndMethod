# Méthode qui simule un lancer de dé (retourne un nombre entre 1 et 6)
def roll_dice
  # rand(6) donne un nombre entre 0 et 5, on ajoute 1 pour avoir entre 1 et 6
  return rand(6) + 1
end

# Méthode qui joue une partie complète et retourne le nombre de tours
def play_game(display = true)
  # Le joueur commence à la marche 0
  step = 0
  # Compteur du nombre de tours joués
  turns = 0

  # Boucle jusqu'à ce que le joueur atteigne la marche 10
  while step < 10
    # Incrémente le compteur de tours à chaque lancer
    turns += 1
    # Lance le dé
    dice = roll_dice

    # Affiche le résultat du dé si on est en mode affichage
    puts "Tour #{turns} — Tu lances le dé : #{dice}" if display

    # Si le dé fait 5 ou 6, on monte d'une marche
    if dice >= 5
      # Empêche de dépasser la marche 10
      step = [step + 1, 10].min
      puts "Tu avances ! Tu es maintenant à la marche #{step}." if display
    # Si le dé fait 1, on descend d'une marche
    elsif dice == 1
      # Empêche de descendre en dessous de 0
      step = [step - 1, 0].max
      puts "Tu recules ! Tu es maintenant à la marche #{step}." if display
    # Sinon (2, 3 ou 4), on ne bouge pas
    else
      puts "Rien ne se passe. Tu restes à la marche #{step}." if display
    end
  end

  # Message de victoire quand le joueur atteint la marche 10
  puts "\n🎉 BRAVO ! Tu as atteint la 10ème marche en #{turns} tours ! 🎉" if display

  # Retourne le nombre de tours pour les statistiques
  return turns
end

# Méthode qui simule 100 parties et calcule le nombre de tours moyen
def average_finish_time
  # Nombre de parties à simuler
  total_games = 100
  # Tableau qui va stocker le nombre de tours de chaque partie
  results = []

  # Simule 100 parties sans affichage (display = false)
  total_games.times do
    results << play_game(false)
  end

  # Calcule la moyenne en divisant la somme par le nombre de parties
  average = results.sum.to_f / total_games

  puts "\n=== Statistiques sur #{total_games} parties ==="
  puts "Nombre de tours minimum : #{results.min}"
  puts "Nombre de tours maximum : #{results.max}"
  # Arrondit la moyenne à 2 décimales avec round(2)
  puts "Nombre de tours moyen   : #{average.round(2)}"
end

# Méthode orchestre qui lance d'abord une partie puis affiche les stats
def perform
  puts "=== Jeu de l'escalier ==="
  # Lance une vraie partie avec affichage
  play_game(true)

  puts "\nMaintenant on simule 100 parties pour les stats..."
  # Lance les statistiques
  average_finish_time
end

# Lance le programme
perform
