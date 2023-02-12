import 'package:offer_first/constants/text_const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colors_const.dart';
import '../constants/icons_const.dart';
import '../provider/profile_provider.dart';
import '../widgets/profile_widget.dart';


class ProfileScreen extends StatefulWidget {
  final String ?token;
  const ProfileScreen({required this.token,super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  static const List<Widget> _widgetOptions = <Widget>[
    ProfileWidget(token: '',),
    Text(
      discovery,
    ),
    Text(
      tasks,
    ),
    Text(message),
    Text(logOut)
  ];



  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, pr, _) {
        return Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(pr.selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor:kGreyColor,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                icon: logoSvgSmall,
                label: matches,
              ),
              BottomNavigationBarItem(
                icon: discoverySvg,
                label: discovery,

              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.task_sharp,
                  color: kGreyColor,
                  size: 35,
                ),
                label: tasks,
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.message_sharp,
                  color: kGreyColor,
                  size: 35,
                ),
                label: tasks,
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.login_outlined,
                  color: kGreyColor,
                  size: 35,
                ),
                label: tasks,
              ),
            ],
            currentIndex: pr.selectedIndex,
            selectedItemColor: kGreyColor,
            onTap:(index){
              pr.onItemTapped(index);
            }

          ),
        );
      },
    );
  }
}
