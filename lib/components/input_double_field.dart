import 'package:flutter/material.dart';

class InputDoubleField extends StatelessWidget {
  const InputDoubleField({
    super.key,
    required this.label,
    required this.onChanged,
  });

  final String label;
  final void Function(double?) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
      ),
      onChanged: (value) => onChanged(double.tryParse(value)),
    );
  }
}
