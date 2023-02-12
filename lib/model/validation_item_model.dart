import 'package:flutter/cupertino.dart';

class ValidationItem {
  final String ?value;
  final Widget ?error;

  const ValidationItem({
    required this.value,
    required this.error});
}