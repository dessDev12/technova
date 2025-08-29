import 'package:driver/widgets/Forms/CustomFormField.dart';
import 'package:flutter/material.dart';
import '../../generated/l10n.dart';

class ProfileStep extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const ProfileStep({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomFormField(
            label: s?.fullName ?? 'Full Name',
            controller: TextEditingController(),
            fieldType: FieldType.email, // can use FieldType.email or custom
            validator: (value) => value == null || value.isEmpty
                ? (s?.enterName ?? 'Enter your name')
                : null,
          ),
          const SizedBox(height: 10),
          CustomFormField(
            label: s?.email ?? 'Email',
            controller: TextEditingController(),
            fieldType: FieldType.email,
            validator: (value) => value == null || !value.contains('@')
                ? (s?.enterValidEmail ?? 'Enter valid email')
                : null,
          ),
          const SizedBox(height: 10),
          CustomFormField(
            label: s?.phoneNumber ?? 'Phone Number',
            controller: TextEditingController(),
            fieldType: FieldType.email, // custom type or general
            validator: (value) => value == null || value.isEmpty
                ? (s?.enterPhone ?? 'Enter phone number')
                : null,
          ),
        ],
      ),
    );
  }
}
