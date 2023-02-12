import 'package:offer_first/constants/colors_const.dart';
import 'package:flutter/material.dart';

import '../constants/icons_const.dart';


class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const  EdgeInsets.only(top:10.0,left: 45.0,right: 45.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment(1.0, 0.9),
            colors: <Color>[
              kGreyColor,
              kGreyLightColor
            ],
          ),

        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          logoFullSvg,
          logoSvg

        ],
      )
    );
  }
}
