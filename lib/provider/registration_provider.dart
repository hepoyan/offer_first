import 'package:offer_first/model/visibility_model.dart';
import 'package:flutter/material.dart';
import '../constants/icons_const.dart';
import '../constants/text_const.dart';
import '../model/field_model.dart';
import '../model/validation_item_model.dart';

String ? tokens;


class RegistrationProvider with ChangeNotifier {
  final RegExp _regExp =  RegExp(pattern);
  final RegExp _regExpName =  RegExp(patternFirstName);
  final RegExp _regExpEmail = RegExp(patternEmail);
  final RegExp _regExpPhoneNumber = RegExp(patternNumber);
  RegExp get regExp => _regExp;

  final List<FieldModel>  _fieldModels =  [
    FieldModel(fHintText: enterNameText, fSuffixIcon: visibilityOff, helpText: '', status: false, obscureText: false,),
    FieldModel(fHintText: enterYourLastNameText, fSuffixIcon: visibilityOff, helpText: '', status: false,  obscureText: false,),
    FieldModel(fHintText: emailLabelText, fSuffixIcon: visibilityOff, helpText: personalEmailText, status: false,  obscureText: false,),
    FieldModel(fHintText: enterPhoneNumberText, fSuffixIcon: visibilityOff, helpText: '', status: false,  obscureText: false,),
    FieldModel(fHintText: passwordLabelText, fSuffixIcon: visibilityOff, helpText: passwordCounterText, status: true, obscureText: true,),
    FieldModel(fHintText: confirmYourPasswordText, fSuffixIcon: visibilityOff, helpText: '', status: true, obscureText: true,),
  ];

    List<FieldModel> get fieldModels => _fieldModels;

    final FieldModel _enterPassword = FieldModel(fHintText:passwordLabelText, fSuffixIcon: visibilityOff, helpText: '', status: true, obscureText: true);

    FieldModel get enterPassword => _enterPassword;

  final List<VisibilityModel> _vis = [
    VisibilityModel(id: 6, status: true),
    VisibilityModel(id: 4, status:true),
    VisibilityModel(id: 5, status: true)
  ];

    List<VisibilityModel> get vis => _vis;


    final List<TextEditingController> _textController = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),];


    List<TextEditingController> get textController => _textController;

  void changeVisibility(int id){

  if(id == 6){
    _enterPassword.obscureText = !_enterPassword.obscureText;
    _vis[id -4].status = !_vis[id - 4].status;

  }  if(id == 4 || id == 5 ){
    _fieldModels[id].obscureText = !_fieldModels[id].obscureText ;

    _vis[id -4].status = !_vis[id - 4].status;
  }
  notifyListeners();
  }


   final List<ValidationItem>  _errorTextValue =   [
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ValidationItem(value: null, error: null),
     ];

  List<ValidationItem>  get errorTextValue => _errorTextValue;

bool _create = false;
  bool get create => _create;
  clickLogin(){
    _create = !create;
    Future.delayed(
        const Duration(seconds: 2)
    );
    _create = false;
    notifyListeners();
  }

  void checkPassword(){
    if(_textController[4].text == _textController[5].text && _textController[0].text.isNotEmpty && _textController[1].text.isNotEmpty && _textController[2].text.isNotEmpty && _textController[3].text.isNotEmpty && _textController[4].text.isNotEmpty){
    _create = true;
    }else{
      _textController[4].text = '';
      _textController[5].text = '';
    }

        notifyListeners();
  }



  void onChangedMethod(String vale, int index){
    if((index == 6 || index == 5 || index == 4)  && _regExp.hasMatch(vale)){
      _errorTextValue[index] = ValidationItem(value: vale, error: null);
    }else if (index == 6 || index == 5 || index == 4){
      _errorTextValue[index] =  ValidationItem(value: null, error: errorSvg);
    }else if ((index == 0 || index == 1 )  && _regExpName.hasMatch(vale)){
      _errorTextValue[index] = ValidationItem(value: vale, error: null);
    }else if (index == 0 || index == 1){
      _errorTextValue[index] =  ValidationItem(value: null, error: errorSvg);
    }else if ((index == 7 || index == 2 )  && _regExpEmail.hasMatch(vale)){
      _errorTextValue[index] = ValidationItem(value: vale, error: null);
    }else if (index ==  7 || index == 2){
      _errorTextValue[index] =  ValidationItem(value: null, error: errorSvg);
    }else if(index == 3 && _regExpPhoneNumber.hasMatch(vale)){
      _errorTextValue[index] = ValidationItem(value: vale, error: null);
    }else if(index == 3){
      _errorTextValue[index] =  ValidationItem(value: null, error: errorSvg);
    }
    notifyListeners();
  }

}




