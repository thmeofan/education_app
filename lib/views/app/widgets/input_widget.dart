import 'package:education_app/consts/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../consts/app_text_styles/constructor_text_style.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;

  const InputWidget({
    Key? key,
    required this.controller,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: AppColors.lightGreyColor,
      ),
      child: TextField(
        style: ConstructorTextStyle.inputText,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.lightGreyColor,
          // labelText: labelText,
          // labelStyle: ConstructorTextStyle.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
