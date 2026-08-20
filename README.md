# book_app

## description

Application Flutter multi écrans pour gestion de livres

## Fonctionnalités

- 5 écrans distincts
- Navigation avec GoRouter (routes nommées)
- Liste avec recherche/filtrage en temps réel
- Détail avec passage de paramètres via GoRouter
- Formulaire d'avis avec validation (3 champs)
- Thème clair/sombre dynamique
- Responsive mobile/tablet (GridView/ListView)
- 3 widgets réutilisables (CustomAppBar, BookCard, EmptyState)
- Séparation UI/données (MockData, StorageService)

## Instructions de lancement

1. Cloner le repo : `git clone https://github.com/Chilowin/book_app.git`
2. Installer les dépendances : `flutter pub get`
3. Lancer l'app : `flutter run`

## captures d'écran

![Accueil](screenshots/Acceuil.png)
![AccueilSombre](screenshots/AcceuilSombre.png)
![Liste](screenshots/Liste.png)
![Détail](screenshots/Details.png)
![Avis](screenshots/Avis.png)
![AvisErreur](screenshots/AvisErreur.png)
![Parametres](screenshots/ParametresClaire.png)
![ParametresSombre](screenshots/ParametresSombre.png)

## Technologies utilisées

- Flutter
- GoRouter ^14.0.0
- SharedPreferences ^2.0.0

## Architecture

lib/
├── models/ (Book, Review)
├── services/ (MockData, StorageService)
├── screens/ (5 écrans)
├── widgets/ (3 widgets réutilisables)
└── routes/ (GoRouter)
