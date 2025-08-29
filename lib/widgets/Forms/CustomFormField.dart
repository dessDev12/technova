import 'package:flutter/material.dart';

enum FieldType { email, password }

class CustomFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final FieldType fieldType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final IconData? prefixIcon;

  const CustomFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.fieldType,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: fieldType == FieldType.password ? true : obscureText,
      keyboardType: fieldType == FieldType.email
          ? TextInputType.emailAddress
          : null,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: const OutlineInputBorder(),
      ),
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return '$label is required';
            }
            if (fieldType == FieldType.email &&
                !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
              return 'Enter a valid email';
            }
            if (fieldType == FieldType.password && value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
    );
  }
}
