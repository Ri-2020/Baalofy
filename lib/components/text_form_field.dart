import 'package:flutter/material.dart';

class TextFormFieldStyled extends StatelessWidget {
  final String lable;
  final String hint;
  final String? errorText;
  final bool? obscureText;
  final TextEditingController controller;
  final Icon? icon;
  final TextInputType? keyboardType;
  const TextFormFieldStyled({
    Key? key,
    required this.controller,
    required this.lable,
    required this.hint,
    this.icon,
    this.obscureText,
    this.keyboardType,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: icon,
          contentPadding: const EdgeInsets.all(15),
          isDense: true,
          filled: true,
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
              ),
              gapPadding: 0,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              )),
          hintText: hint,
          errorText: errorText,
          labelText: lable,
        ),
      ),
    );
  }
}
