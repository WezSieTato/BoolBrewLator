import 'package:flutter/material.dart';

class InputDoubleField extends StatelessWidget {
  const InputDoubleField({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

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
