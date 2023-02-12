
import 'package:offer_first/widgets/password_email_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/logo_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children:  const [
                LogoWidget(),
                PasswordEmailWidget()
              ],
            ),
          ),
        ) ,

      ),
    );
  }
}
