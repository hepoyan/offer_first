import 'package:offer_first/constants/icons_const.dart';
import 'package:offer_first/provider/registration_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colors_const.dart';

class VisibilityWidget extends StatelessWidget {
  final int id;
  const VisibilityWidget({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
      builder: (context, pr, _) {
        return IconButton(
          icon:  Icon(
             pr.vis[id -4].status ? visibilityOff:visibility,
            color: kGreyColor,
          ),
          onPressed: () {
             pr.changeVisibility(id);

          },
        );
      },
    );
  }
}