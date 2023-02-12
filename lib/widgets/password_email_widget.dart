
import 'package:offer_first/widgets/form_widget.dart';
import 'package:offer_first/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/text_const.dart';
import 'create_account_widget.dart';
import 'forgot_password_widget.dart';
import 'login_widget.dart';

class PasswordEmailWidget extends StatelessWidget {
  const PasswordEmailWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20),
        child: Column(
          children:  const [
            TextWidget(
              text: welcomeBack,
            status: true,
            ),
            FormWidget(),
            ForgotPasswordWidget(text: forgotPasswordText, status: true,),
            LoginWidget(text: loginText,),
            CreateAccountWidget(status: false, text: createAccountText,)
          ],
        ),
      ),
    );
  }
}
