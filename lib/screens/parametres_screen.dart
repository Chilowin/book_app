import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ParametresScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggleTheme;
  const ParametresScreen({
    required this.onToggleTheme,
    required this.isDarkMode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Parametres'),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Thème sombre'),
            value: isDarkMode,
            onChanged: (val) => onToggleTheme(val),
          ),
        ],
      ),
    );
  }
}
