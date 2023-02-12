import 'package:flutter/material.dart';
import 'package:offer_first/widgets/text_field_widgwt.dart';
import 'package:provider/provider.dart';
import '../constants/icons_const.dart';
import '../constants/text_const.dart';
import '../model/field_model.dart';
import '../provider/registration_provider.dart';


class FormWidget extends StatelessWidget {
  const FormWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
  builder: (context, pr, _) {
  return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 13.0),
      child: Form(
          child: Column(
        children:   [
          const SizedBox(
            height: 5.0,
          ),
          TextFieldWidget(fieldModel: FieldModel(fHintText: emailLabelText, fSuffixIcon: visibilityOff, helpText: '', status: false, obscureText: false,),formId: 7,),
      const SizedBox(
            height: 10.0,
          ),
          TextFieldWidget(fieldModel: pr.enterPassword, formId: 6,),
        ],
      )
      ),
    );
  },
);
  }
}