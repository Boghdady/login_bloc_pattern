import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:login_bloc_section14/src/models/user.dart';

class UserApi {
  Future<UserModel> getAllUsers() async {
    var url = "https://jsonplaceholder.typicode.com/users/${1}";
    var user;
    print('Test');
    var response = await http.get(url);
    print("Request failed with status: ${response.statusCode}.");
    print("Request failed with status: ${response.body}.");
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      user = UserModel.fromJson(jsonResponse);
      print(user);
    } else {
      print("Request failed with status: ${response.statusCode}.");
      print("Request failed with status: ${response.body}.");
    }
    return user;
  }
}
