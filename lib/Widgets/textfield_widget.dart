import 'package:flutter/material.dart';
import 'package:power/Utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kTextfieldColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const TextField(
          cursorColor: kDarkColor,
          style: TextStyle(color: kDarkColor),
          decoration: InputDecoration(
            fillColor: kDarkLightColor,
            border: InputBorder.none,
            // labelStyle: TextStyle(color: kDarkColor),
            // hintStyle: TextStyle(color: kDarkLightColor),
          ),
        ),
      ),
    );
  }
}
