import 'package:offer_first/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// constraints.maxWidth/15
class TextWidget extends StatelessWidget {
  final String text;
  final bool status;
  const TextWidget({
    required this.status,
    required this.text,  super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.raleway(
        fontWeight: FontWeight.bold,
        fontSize:status ? MediaQuery.of(context).textScaleFactor*22:MediaQuery.of(context).textScaleFactor*15,
        color: kGreyColor,
      ),
    );
  }
}
