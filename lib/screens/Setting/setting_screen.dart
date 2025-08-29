import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/locale_provider.dart';
import '../../provider/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Choose Language', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            DropdownButton<Locale>(
              value: localeProvider.locale,
              items: const [
                DropdownMenuItem(value: Locale('en'), child: Text('English')),
                DropdownMenuItem(value: Locale('am'), child: Text('Amharic')),
                DropdownMenuItem(value: Locale('om'), child: Text('Oromic')),
                DropdownMenuItem(value: Locale('so'), child: Text('Somali')),
                DropdownMenuItem(value: Locale('ti'), child: Text('Tigrigna')),
              ],
              onChanged: (locale) {
                if (locale != null) localeProvider.setLocale(locale);
              },
            ),
            const SizedBox(height: 30),
            const Text('Theme', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: themeProvider.isDarkMode,
              onChanged: (value) => themeProvider.toggleTheme(value),
            ),
          ],
        ),
      ),
    );
  }
}
