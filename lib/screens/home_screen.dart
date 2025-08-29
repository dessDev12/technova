import 'package:driver/screens/Drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              localeTexts.welcome ?? "Welcome",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example: navigate to login screen
              },
              child: Text(localeTexts.login ?? "Login"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Example: navigate to signup screen
              },
              child: Text(localeTexts.signup ?? "sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
