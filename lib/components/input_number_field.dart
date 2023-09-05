import 'package:flutter/material.dart';

class InputNumberField extends StatelessWidget {
  const InputNumberField({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
      ),
      onChanged: onChanged,
    );
  }
}
