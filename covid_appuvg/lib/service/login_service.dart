import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:covid_appuvg/models/api_response.dart';
import 'package:covid_appuvg/models/users.dart';

class LoginService{
  static const API = 'https://jsonplaceholder.typicode.com/users';
  Future<APIResponse<List<User>>> getUserList(){
    return http.get(API).then((data){
      if (data.statusCode == 200){
        final jsonData = json.decode(data.body);
        final users = <User>[];
        for(var item in jsonData){
          final user = User(
              name: item['name'],
              pass: item['username']
          );
          users.add(user);
        }
        return APIResponse<List<User>>(data: users);
      }
      return APIResponse<List<User>>(error: true, errorMessage: 'An error ocurred');
    }).catchError((_) => APIResponse<List<User>>(error: true, errorMessage: 'An error ocurred api'));
  }
}