import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const ReusableTextField({
    @required this.label,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(6),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.indigo,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.white24,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.indigo,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.indigo,
            width: .5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.indigo,
            width: .5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
