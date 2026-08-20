import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:book_app/screens/parametres_screen.dart';

void main() {
  testWidgets('Le switch active le thème sombre et le désactive', (
    tester,
  ) async {
    ThemeMode themeMode = ThemeMode.light;

    await tester.pumpWidget(
      MaterialApp(
        themeMode: themeMode,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: StatefulBuilder(
          builder: (context, setState) {
            return ParametresScreen(
              isDarkMode: themeMode == ThemeMode.dark,
              onToggleTheme: (bool isDarkMode) {
                setState(() {
                  themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
                });
              },
            );
          },
        ),
      ),
    );

    final initialSwitch = tester.widget<SwitchListTile>(
      find.byType(SwitchListTile),
    );
    expect(initialSwitch.value, isFalse);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
      ThemeMode.light,
    );

    await tester.tap(find.byType(SwitchListTile));
    await tester.pump();

    final enabledSwitch = tester.widget<SwitchListTile>(
      find.byType(SwitchListTile),
    );
    expect(enabledSwitch.value, isTrue);
    expect(themeMode, ThemeMode.dark);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
      ThemeMode.dark,
    );

    await tester.tap(find.byType(SwitchListTile));
    await tester.pump();

    final disabledSwitch = tester.widget<SwitchListTile>(
      find.byType(SwitchListTile),
    );
    expect(disabledSwitch.value, isFalse);
    expect(themeMode, ThemeMode.light);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
      ThemeMode.light,
    );
  });
}
