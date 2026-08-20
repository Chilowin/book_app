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
      title: Text(title),
      centerTitle: true,
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
