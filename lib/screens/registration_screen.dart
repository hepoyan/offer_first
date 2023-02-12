import 'package:flutter/material.dart';
import '../widgets/logo_widget.dart';
import '../widgets/reqistration_widget.dart';



class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                RegistrationWidget(),



                ],
            ),
          ),
        ) ,

      ),
    );
  }
}

