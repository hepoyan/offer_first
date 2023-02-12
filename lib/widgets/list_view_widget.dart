import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:offer_first/widgets/text_field_widgwt.dart';
import 'package:provider/provider.dart';

import '../constants/colors_const.dart';
import '../constants/text_const.dart';
import '../provider/registration_provider.dart';
import 'login_widget.dart';


class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
      builder: (context, pr, _) {
        return Expanded(
          child: ListView.builder(
              itemCount: pr.fieldModels.length + 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25, top: 5.0),
                  child: index == pr.fieldModels.length ? Text(conditionsText,
                    textAlign: TextAlign.justify,
                    maxLines: 2
                    , style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      color: kGreyColor,
                    ),
                  ) : index == pr.fieldModels.length + 1 ? const LoginWidget(
                    text: createAccountText,) : TextFieldWidget(
                    fieldModel: pr.fieldModels[index], formId: index,

                  ),
                );
              }),
        );
      },
    );
  }
}
