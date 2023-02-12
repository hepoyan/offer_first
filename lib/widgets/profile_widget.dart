import 'package:offer_first/api/json_models/user.dart';

import 'package:offer_first/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../api/api_provider/user_repository.dart';
import '../constants/text_const.dart';

class ProfileWidget extends StatelessWidget {
  final String  token;
  const ProfileWidget({required this.token, super.key});
  @override
  Widget build(BuildContext context) {
        return SafeArea(
          maintainBottomViewPadding: false,
          child: FutureBuilder<User>(
              future: ApiProvider().getUserData(),
              builder: (context, snapshot) {

                return snapshot.hasData ?Column(
                children:  [
                  const SizedBox(
                    height: 25.0,
                  ),
                   const TextWidget(status: true, text: profileText),
                   const SizedBox(
                     height: 15.0,
                   ),
                   TextWidget(status: false, text: snapshot.hasData?"$offerFirstText${snapshot.data!.result.uuid?.substring(0,6)}":''),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    height: MediaQuery.of(context).size.height/6,
                    width:  MediaQuery.of(context).size.height/6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage("https://media.licdn.com/dms/image/C4D03AQGEPnk5mQlR3g/profile-displayphoto-shrink_800_800/0/1637259938235?e=1681344000&v=beta&t=Z3Uc-RSwOWfl8ZNGPY3huBisl91Qrx0v5N0RwX1Rkjk"),
                            fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextWidget(status: true, text: snapshot.hasData?"${snapshot.data!.result.firstName}   ${snapshot.data!.result.lastName}":''),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextWidget(status: false, text: snapshot.hasData?"${snapshot.data!.result.email}":''),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextWidget(status: false, text: snapshot.hasData?"${snapshot.data!.result.phoneNumber}":''),
                ],
              ): const CircularProgressIndicator();
            }
          ),
        );
      }


}
