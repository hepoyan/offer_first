import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:offer_first/constants/text_const.dart';

import '../../provider/registration_provider.dart';
import '../json_models/user.dart';


class ApiProvider {

  Future<User> createUser({required String firstName, required String lastName,required String email,required String phoneNumber,required String password}) async {
    final response =  await http.post(
      Uri.parse(baseUrl+endUrlSingUp),
      headers:headersText,
      body: jsonEncode(<String, dynamic>{
        kFirstName: firstName,
        kLastName: lastName,
        kEmail: email,
        kPhoneNumber:phoneNumber,
        kPassword: password
        
      }),
    );
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create user.');
    }
  }

  Future<User> login(String password, String email,) async {
    print('object');

    final response =  await http.post(
      Uri.parse(baseUrl+endUrlLogin),
      headers:headersText,
      body: jsonEncode(<String, dynamic>{
        kEmail: email,
        kPassword: password,
      }),);
    if (response.statusCode == 200) {
        tokens = User.fromJson(jsonDecode(response.body)).result.token;
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to login user.');
    }
  }

  Future<User> getUserData() async {
    final response = await http
        .get(Uri.parse(baseUrl + endUrlSingUp),
    headers:{"X-API-TOKEN": tokens.toString()}
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }
}
