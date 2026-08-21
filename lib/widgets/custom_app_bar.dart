import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({required this.title, super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),

      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => context.go('/'),
        icon: const Icon(Icons.home),
      ),
      actions: [
        IconButton(
          onPressed: () => context.go('/parametres'),
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
