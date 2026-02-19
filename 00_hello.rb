# Méthode qui demande le prénom à l'utilisateur et le retourne
def ask_first_name
  puts "Comment tu t'appelles ?"
  print "> "
  # Lit la saisie et supprime le retour à la ligne
  first_name = gets.chomp
  # Retourne le prénom pour qu'il puisse être utilisé ailleurs
  return first_name
end

# Méthode qui dit bonjour en utilisant le prénom passé en paramètre
def say_hello(first_name)
  # Affiche le message de bienvenue avec interpolation #{}
  puts "Bonjour, #{first_name} !"
end

# Méthode orchestre qui appelle les autres méthodes dans le bon ordre
def perform
  # Récupère le prénom de l'utilisateur
  first_name = ask_first_name
  # Dit bonjour avec ce prénom
  say_hello(first_name)
end

# Lance le programme
perform
