
import 'package:flutter/cupertino.dart';

class ProfileProvider with ChangeNotifier {
int _selectedIndex = 0;

int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
      _selectedIndex = index;
    notifyListeners();
  }

}
