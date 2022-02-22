import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final TextInputType textInputType;
  final String hintText;
  const TextInput(
      {Key? key,
      required this.textEditingController,
      required this.isPassword,
      required this.textInputType,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: TextField(
          controller: textEditingController,
          obscureText: isPassword,
          keyboardType: textInputType,
          decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: Divider.createBorderSide(context)),
              contentPadding: const EdgeInsets.all(10)),
        ));
  }
}
