import 'package:flutter/cupertino.dart';

class FieldModel{
  final String  fHintText;
  final IconData fSuffixIcon;
  final String helpText;
  final bool status;
  late  bool obscureText;


   FieldModel({
    required this.fHintText,
    required this.fSuffixIcon,
    required this.helpText,
    required this.status,
    required this.obscureText
  });
}