import 'package:flutter/material.dart';

class AddressTextfieldWidget extends StatelessWidget {
  final TextEditingController? textController;
  final String? labelText;
  final TextInputType? keyboardType;
  const AddressTextfieldWidget({
    super.key,
    this.textController,
    this.keyboardType,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: textController,
      decoration: InputDecoration(labelText: labelText),
    );
  }
}
