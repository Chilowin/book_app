import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = createRouter(_toggleTheme, _themeMode == ThemeMode.dark);
  }

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      _router = createRouter(_toggleTheme, _themeMode == ThemeMode.dark);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      routerConfig: _router,
      themeMode: _themeMode,
      theme: ThemeData.light(), // thème clair
      darkTheme: ThemeData.dark(), //thème Sombre
    );
  }
}
