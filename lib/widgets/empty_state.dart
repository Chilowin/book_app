import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final message;
  const EmptyState({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center));
  }
}
