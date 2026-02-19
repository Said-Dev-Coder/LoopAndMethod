# Projet Ruby — Boucles & Méthodes

**Auteur :** Said  
**Formation :** TS4A

## Structure du projet

```
lib/
├── 00_hello.rb       # Programme de salutation
├── 01_pyramids.rb    # Pyramides
├── 02_password.rb    # Système de mot de passe
└── 03_stairway.rb    # Jeu de l'escalier
```

## Lancer les programmes

```bash
ruby lib/00_hello.rb
ruby lib/01_pyramids.rb
ruby lib/02_password.rb
ruby lib/03_stairway.rb
```

## Description des fichiers

### 00_hello.rb
Demande le prénom de l'utilisateur et lui dit bonjour.  
Méthodes : `ask_first_name`, `say_hello`, `perform`

### 01_pyramids.rb
Trois types de pyramides :
- `half_pyramid` — demi-pyramide alignée à droite
- `full_pyramid` — pyramide complète (triangle isocèle)
- `wtf_pyramid` — pyramide en losange (nombre impair requis)

### 02_password.rb
Système de sécurité avec création et vérification de mot de passe.  
Méthodes : `signup`, `login`, `welcome_screen`, `perform`

### 03_stairway.rb
Jeu où le joueur monte un escalier de 10 marches selon un dé.  
- 5 ou 6 → monte d'une marche  
- 1 → descend d'une marche  
- 2, 3, 4 → rien ne se passe  
Inclut une méthode `average_finish_time` qui simule 100 parties et affiche des statistiques.
