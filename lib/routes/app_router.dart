import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/accueil_screen.dart';
import '../screens/avis_screen.dart';
import '../screens/detail_screen.dart';
import '../screens/liste_screen.dart';
import '../screens/parametres_screen.dart';

GoRouter createRouter(ValueChanged<bool> onToggleTheme, bool isDarkMode) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const AccueilScreen()),
      GoRoute(
        path: '/livres',
        builder: (context, state) => const ListeScreen(),
      ),
      GoRoute(
        path: '/livre/:id',
        builder: (context, state) {
          final String id = state.pathParameters['id']!;
          return DetailScreen(id: int.parse(id));
        },
      ),

      GoRoute(
        path: '/avis/:id',
        builder: (context, state) {
          final String id = state.pathParameters['id']!;
          return AvisScreen(bookId: int.parse(id));
        },
      ),
      GoRoute(
        path: '/parametres',
        builder: (context, state) => ParametresScreen(
          onToggleTheme: onToggleTheme,
          isDarkMode: isDarkMode,
        ),
      ),
    ],
  );
}
