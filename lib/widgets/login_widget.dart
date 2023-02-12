import 'package:offer_first/constants/text_const.dart';
import 'package:offer_first/provider/registration_provider.dart';
import 'package:offer_first/screens/profile_screen.dart';
import 'package:offer_first/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../api/api_provider/user_repository.dart';
import '../constants/colors_const.dart';

class LoginWidget extends StatefulWidget {
  final String text;
  const LoginWidget({required this.text, super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  ApiProvider apiProvider = ApiProvider();

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
      builder: (context, pr, _) {
              return InkWell(
                onTap: () {
                if(widget.text == loginText){
                 // _login(pr.textController[7].text, pr.textController[6].text);
                  apiProvider.login(pr.textController[6].text, pr.textController[7].text).then((value) => {
                    if(value.status){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   ProfileScreen(token: value.result.token,)),
                  )
                    }
                  }
                  );
                }else if(widget.text == createAccountText){
                  apiProvider.createUser(firstName: pr.textController[0].text, lastName: pr.textController[1].text, email: pr.textController[2].text,
                      phoneNumber: pr.textController[3].text, password: pr.textController[4].text).then((value) =>
                  {
                    if(value.status){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            ProfileScreen(token: value.result.token,)),
                      )
                    }
                  }
                  );


                }

                },
                child: Container(
                margin: const EdgeInsets.only(left: 28.0, right: 28.0),
                height: MediaQuery.of(context).size.height / 15,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: kCyanAccent,
                    borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: TextWidget(
                    text: widget.text,
                    status: false,
                  ),
                ),
                ),
              );
          }
        );

  }

  /*void _login(String email, String password)async{
    try {
      var apiProvider = ApiProvider();
      var user = (await apiProvider.login(password,email));
    }catch(error){
      if (kDebugMode) {
        print('$error -----------');
      }
    }
  }*/
}
