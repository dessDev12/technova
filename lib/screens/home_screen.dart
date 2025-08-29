import 'package:driver/screens/Drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final localeTexts = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(localeTexts.welcome)),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              localeTexts.welcome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example: navigate to login or another page
              },
              child: Text(localeTexts.login),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text(localeTexts.signup)),
          ],
        ),
      ),
    );
  }
}
