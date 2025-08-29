import 'package:flutter/material.dart';

class CarDetailsStep extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const CarDetailsStep({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Car Model'),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter car model' : null,
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Number Plate'),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter number plate' : null,
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Color'),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter car color' : null,
          ),
        ],
      ),
    );
  }
}
