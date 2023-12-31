import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_shopping/utils/color_constant.dart';


class MyTextFieldWithoutBorder extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final double fontSize;
  final bool  readOnly;
  final VoidCallback onTap;
  final int? maxLength;
  final TextInputType keyboardType;
  List<TextInputFormatter>? inputFormatters;
  MyTextFieldWithoutBorder(
      {Key? key,
        required this.hintText,
        required this.controller,
        required this.validator, required this.fontSize, required this.readOnly, required this.onTap,
        required this.keyboardType, this.maxLength, required this.inputFormatters})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,

      readOnly: readOnly,
      controller: controller,
      onTap: onTap,
      maxLength: maxLength,
      style:
      TextStyle(fontFamily: 'baloo', fontWeight: FontWeight.w500,fontSize: fontSize),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        counterText: '',
        hintText: hintText,
        hintStyle:
        const TextStyle(fontWeight: FontWeight.w500, fontFamily: 'baloo'),
        labelStyle: const TextStyle(
            color: greenColor, fontFamily: 'baloo', fontWeight: FontWeight.w500),
      ),
      validator: validator,
    );
  }
}
