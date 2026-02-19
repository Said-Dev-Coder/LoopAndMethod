# Demande le nombre d'étages à l'utilisateur et retourne un entier
def ask_stages
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  # Convertit la saisie en entier avec to_i
  return gets.chomp.to_i
end

# Méthode qui construit une demi-pyramide alignée à droite (exercice précédent)
def half_pyramid
  # Récupère le nombre d'étages
  stages = ask_stages
  puts "Voici la pyramide :"
  # Boucle de 1 jusqu'au nombre d'étages
  (1..stages).each do |i|
    # Calcule les espaces (décroît) et les # (croît) pour aligner à droite
    puts(" " * (stages - i) + "#" * i)
  end
end

# Méthode qui construit une pyramide complète (triangle isocèle)
def full_pyramid
  # Récupère le nombre d'étages
  stages = ask_stages
  puts "Voici la pyramide :"
  # Boucle de 1 jusqu'au nombre d'étages
  (1..stages).each do |i|
    # Chaque étage a (stages - i) espaces à gauche et (2*i - 1) dièses
    puts(" " * (stages - i) + "#" * (2 * i - 1))
  end
end

# Méthode qui construit une pyramide en losange (montée + descente)
def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair)"
  print "> "
  stages = gets.chomp.to_i

  # Vérifie que le nombre est impair, sinon on rejette l'utilisateur
  if stages % 2 == 0
    puts "Erreur : choisis un nombre impair !"
    return
  end

  puts "Voici la pyramide :"

  # Calcule le nombre d'étages pour la moitié haute
  half = stages / 2

  # Partie haute : de 1 jusqu'au milieu (inclus)
  (1..half + 1).each do |i|
    puts(" " * (half + 1 - i) + "#" * (2 * i - 1))
  end

  # Partie basse : redescend du milieu-1 jusqu'à 1
  (half).downto(1) do |i|
    puts(" " * (half + 1 - i) + "#" * (2 * i - 1))
  end
end

# Méthode orchestre qui appelle les trois pyramides
def perform
  puts "\n--- Demi-pyramide ---"
  half_pyramid

  puts "\n--- Pyramide complète ---"
  full_pyramid

  puts "\n--- Pyramide losange ---"
  wtf_pyramid
end

# Lance le programme
perform
