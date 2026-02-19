# Méthode qui demande à l'utilisateur de créer un mot de passe et le retourne
def signup
  puts "=== Création de votre mot de passe ==="
  print "Choisissez un mot de passe : "
  # Stocke le mot de passe défini par l'utilisateur
  password = gets.chomp
  puts "Mot de passe enregistré !"
  # Retourne le mot de passe pour l'utiliser dans perform
  return password
end

# Méthode qui demande le mot de passe jusqu'à ce qu'il soit correct
def login(password)
  puts "\n=== Connexion ==="
  # Initialise la saisie avec une valeur vide pour entrer dans la boucle
  input = ""
  # Boucle tant que la saisie ne correspond pas au mot de passe
  while input != password
    print "Entrez votre mot de passe : "
    input = gets.chomp
    # Vérifie si le mot de passe est incorrect pour afficher un message d'erreur
    if input != password
      puts "Mot de passe incorrect, réessayez !"
    end
  end
  # Le bon mot de passe a été saisi, on confirme
  puts "Mot de passe correct !"
end

# Méthode qui affiche l'écran de bienvenue avec des infos secrètes
def welcome_screen
  puts "\n=============================="
  puts "  BIENVENUE DANS VOTRE ESPACE SECRET"
  puts "=============================="
  puts "Voici les informations top secrètes de la NSA :"
  puts "- Le dernier texto de Said à sa mère : 'J'arrive dans 5 min'"
  puts "- Le dernier message WhatsApp de Said : 'T'as le wifi ?'"
  puts "- Le code secret de la NSA : 1-2-3-4-5"
  puts "Ces informations s'autodétruiront dans 5 secondes... ou pas."
end

# Méthode orchestre qui appelle chaque partie dans le bon ordre
def perform
  # Étape 1 : l'utilisateur crée son mot de passe
  password = signup
  # Étape 2 : l'utilisateur doit saisir le bon mot de passe
  login(password)
  # Étape 3 : affiche l'écran secret si le mot de passe est correct
  welcome_screen
end

# Lance le programme
perform
