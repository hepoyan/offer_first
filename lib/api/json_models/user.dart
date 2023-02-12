import '../../constants/text_const.dart';

class User {
  final bool status;
  final Result result;

  User({required this.status,required  this.result});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(status: json['status'], result:   Result.fromJson(json['result']) );
  }
   // status = json['status'];
  //  result = json['result'] != null ?  Result.fromJson(json['result']) : null;
//  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['result'] = result.toJson();
    return data;
  }
}

class Result {
  String? uuid;
  String? firstName;
  String? lastName;
  String? email;  String? phoneNumber;
  String? token;
  String? password;

  Result(
      {this.uuid,
        this.firstName,
        this.lastName,
        this.email,
        this.phoneNumber,
        this.token,
        this.password});

  Result.fromJson(Map<String, dynamic> json) {
    uuid = json[kUuid];
    firstName = json[kFirstName];
    lastName = json[kLastName];
    email = json[kEmail];
    phoneNumber = json[kPhoneNumber];
    token = json[kToken];
    password = json[kPassword];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[kUuid] = uuid;
    data[kFirstName] = firstName;
    data[kLastName] = lastName;
    data[kEmail] = email;
    data[kPhoneNumber] = phoneNumber;
    data[kToken] = token;
    data[kPassword] = password;
    return data;
  }
}