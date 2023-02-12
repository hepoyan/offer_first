
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colors_const.dart';
import '../provider/registration_provider.dart';
import '../screens/registration_screen.dart';


class ForgotPasswordWidget extends StatelessWidget {
  final String text;
  final bool status;

  const ForgotPasswordWidget(
      {required this.text, required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
      builder: (context, pr, _) {
        return Align(
          alignment: Alignment.topRight,
          child: TextButton(
              onPressed: () {
                if (status == false) {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationScreen())
                  );

                }
              },
              child: Text(
                  text,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: status ? kGreyColor : kCyanAccent
                  )
              )
          ),
        );
      },
    );
  }
}