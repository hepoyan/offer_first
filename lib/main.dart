import 'package:offer_first/constants/text_const.dart';
import 'package:offer_first/provider/profile_provider.dart';
import 'package:offer_first/provider/registration_provider.dart';
import 'package:offer_first/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'constants/colors_const.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MultiProvider(
        providers: [
      ChangeNotifierProvider(
        create: (_) => RegistrationProvider(),
      ),

          ChangeNotifierProvider(
            create: (_) => ProfileProvider(),
          ),
    ],
    child:const  MyApp(),
    ),

  );
  SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
    statusBarColor: kWhiteColor,
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: nameApp,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kGreyColor,
      ),
      home: const LoginScreen(),
    );
  }
}
