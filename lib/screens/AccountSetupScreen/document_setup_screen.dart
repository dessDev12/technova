import 'package:flutter/material.dart';

class DocumentStep extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const DocumentStep({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Pick profile picture
            },
            child: const Text('Upload Profile Picture'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Pick license/ID
            },
            child: const Text('Upload License/ID'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Pick car documents
            },
            child: const Text('Upload Car Documents'),
          ),
        ],
      ),
    );
  }
}
