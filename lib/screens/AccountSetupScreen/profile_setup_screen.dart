import 'package:flutter/material.dart';

class ProfileStep extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const ProfileStep({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Full Name'),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter your name' : null,
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) => value == null || !value.contains('@')
                ? 'Enter valid email'
                : null,
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Phone Number'),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter phone number' : null,
          ),
        ],
      ),
    );
  }
}
