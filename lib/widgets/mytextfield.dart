import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPass;
  final String hintText;
  final TextInputType keyboardType;
  const CustomTextField(
      {super.key,
      required this.controller,
      this.isPass = false,
      required this.hintText,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context, width: 1),
    );

    return TextField(
      cursorColor: Colors.white,
      cursorRadius: const Radius.circular(20),
      controller: controller,
      decoration: InputDecoration(

          //hoverColor: Colors.white,
          fillColor: Color(0xff353535),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      obscureText: isPass,
      keyboardType: keyboardType,
    );
  }
}
