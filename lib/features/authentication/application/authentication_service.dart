import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthenticationService {
  login(String username, String password) async {
    try {
      var response = await http.post(
          Uri.parse("https://fakestoreapi.com/auth/login"),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({"username": username, "password": password}));
          var rspStr=utf8.decode(response.bodyBytes);
     
      if (response.statusCode == 200) {
         var rspData = jsonDecode(rspStr);
      print(rspData);
        return rspData["token"];
      } else {
        throw (rspStr);
      }
    } catch (e) {
      rethrow;
    }
  }
  register(String username, String password,String email) async {
    try {
      var response = await http.post(
          Uri.parse("https://fakestoreapi.com/users"),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
             "email":email,
             "username": username,
             "password": password
             }));
          var rspStr=utf8.decode(response.bodyBytes);
     
      if (response.statusCode == 200) {
         var rspData = jsonDecode(rspStr);
      print(rspData);
        return true;
      } else {
        throw (rspStr);
      }
    } catch (e) {
      rethrow;
    }
  }

  updatePassword(String password) async {
    try {
      var response = await http.patch(
          Uri.parse("https://fakestoreapi.com/users/7"),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
             "password": password
             }));
          var rspStr=utf8.decode(response.bodyBytes);
     
      if (response.statusCode == 200) {
         var rspData = jsonDecode(rspStr);
      print(rspData);
        return true;
      } else {
        throw (rspStr);
      }
    } catch (e) {
      rethrow;
    }
  }
}
