import 'package:offer_first/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/text_const.dart';
import 'list_view_widget.dart';

class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 20.0),
        child: Column(children: const  [
           TextWidget(
            text: registrationText,
            status: true,
          ),
           SizedBox(
            height: 15.0,
          ),
          ListViewWidget()
        ]),
      ),
    );
  }
}
