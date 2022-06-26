import 'package:flutter/material.dart';

class TextFormFieldStyled extends StatelessWidget {
  final String lable;
  final String hint;
  final String? errorText;
  final TextEditingController controller;
  const TextFormFieldStyled({
    Key? key,
    required this.controller,
    required this.lable,
    required this.hint,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(5),
          )),
          hintText: hint,
          errorText: errorText,
          labelText: lable,
        ),
      ),
    );
  }
}
