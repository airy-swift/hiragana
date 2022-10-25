import 'package:flutter/material.dart';

class BorderedTextForm extends StatelessWidget {
  const BorderedTextForm({
    super.key,
    this.hintLabel,
    required this.textController,
  });

  final TextEditingController textController;

  final String? hintLabel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        hintText: hintLabel,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
      ),
    );
  }
}
