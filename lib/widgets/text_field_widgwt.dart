import 'package:offer_first/model/field_model.dart';
import 'package:offer_first/provider/registration_provider.dart';
import 'package:offer_first/widgets/visibility_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../constants/colors_const.dart';

class TextFieldWidget extends StatelessWidget {
  final int formId;
  final FieldModel fieldModel;

  const TextFieldWidget(
      {required this.fieldModel, required this.formId, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
      builder: (context, pr, _) {
        return TextField(
         keyboardType:formId == 3 ? TextInputType.phone:TextInputType.streetAddress,
          onChanged: (value){
            pr.onChangedMethod(value, formId);
          },
          controller: pr.textController[formId],
          obscureText: fieldModel.obscureText,

          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                14.0,
              ),
              borderSide: const BorderSide(color: kGreyColor, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kGreyColor, width: 1.0),
              borderRadius: BorderRadius.circular(14.0),
            ),
           // errorText: pr.errorTextValue[formId].error
            //prefixText: pr.errorTextValue[formId].error,
            prefixIcon:  pr.errorTextValue[formId].error,
            hintText: fieldModel.fHintText,
            helperText: fieldModel.helpText,
            helperStyle: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              color: kGreyColor,
            ),
            hintStyle: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              color: kGreyColor,
            ),
            suffixIcon: fieldModel.status
                ? VisibilityWidget(
                    id: formId,
                  )
                : const Text(''),
          ),
          cursorColor: kGreyColor,
        );
      },
    );
  }
}
