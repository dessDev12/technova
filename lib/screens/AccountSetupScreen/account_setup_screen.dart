import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
import '../../provider/locale_provider.dart';
import '../../provider/theme_provider.dart';
import 'car_detialset_screen.dart';
import 'document_setup_screen.dart';
import 'profile_setup_screen.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({super.key});

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  int _currentStep = 0;

  // Form keys for validation
  final _profileFormKey = GlobalKey<FormState>();
  final _carFormKey = GlobalKey<FormState>();
  final _documentFormKey = GlobalKey<FormState>();

  void _nextStep() {
    bool isValid = true;
    if (_currentStep == 0) isValid = _profileFormKey.currentState!.validate();
    if (_currentStep == 1) isValid = _carFormKey.currentState!.validate();
    if (_currentStep == 2) isValid = _documentFormKey.currentState!.validate();

    if (!isValid) return;

    if (_currentStep < 2) {
      setState(() => _currentStep++);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.setupCompleted)),
      );
    }
  }

  void _prevStep() {
    if (_currentStep > 0) setState(() => _currentStep--);
  }

  Widget _buildStepIndicator(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    List<String> titles = [loc.profile, loc.car, loc.documents];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        titles.length,
        (index) => Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: _currentStep == index
                  ? theme.primaryColor
                  : Colors.grey[300],
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: _currentStep == index ? Colors.white : Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              titles[index],
              style: TextStyle(
                fontSize: 12,
                color: _currentStep == index
                    ? theme.primaryColor
                    : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepBody() {
    switch (_currentStep) {
      case 0:
        return ProfileStep(formKey: _profileFormKey);
      case 1:
        return CarDetailsStep(formKey: _carFormKey);
      case 2:
        return DocumentStep(formKey: _documentFormKey);
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.accountSetup),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
            ),
            onPressed: () {
              themeProvider.toggleTheme(!themeProvider.isDarkMode);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildStepIndicator(context),
            const SizedBox(height: 20),
            Expanded(child: _buildStepBody()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentStep > 0)
                  ElevatedButton(
                    onPressed: _prevStep,
                    child: Text(AppLocalizations.of(context)!.back),
                  ),
                ElevatedButton(
                  onPressed: _nextStep,
                  child: Text(
                    _currentStep == 2
                        ? AppLocalizations.of(context)!.finish
                        : AppLocalizations.of(context)!.next,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
