import 'package:driver/widgets/Auth/CustomButton.dart';
import 'package:flutter/material.dart';
import '../../generated/l10n.dart';

class DocumentStep extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const DocumentStep({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomButton(
            text: s?.uploadProfilePicture ?? 'Upload Profile Picture',
            onPressed: () {
              // Pick profile picture
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            text: s?.uploadLicense ?? 'Upload License/ID',
            onPressed: () {
              // Pick license/ID
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            text: s?.uploadCarDocuments ?? 'Upload Car Documents',
            onPressed: () {
              // Pick car documents
            },
          ),
        ],
      ),
    );
  }
}
