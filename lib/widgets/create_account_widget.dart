import 'package:flutter/cupertino.dart';
import 'package:offer_first/constants/colors_const.dart';
import 'package:offer_first/constants/text_const.dart';
import 'package:offer_first/widgets/forgot_password_widget.dart';

import 'package:google_fonts/google_fonts.dart';

class CreateAccountWidget extends StatelessWidget {
  final String text;
  final bool status;
  const CreateAccountWidget({
    required this.status,
    required this.text,  super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(haveAccountText,
          style:  GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            color: kGreyColor,
          ),
        ),
         ForgotPasswordWidget(text: text, status: false,)
      ],
    );
  }
}
