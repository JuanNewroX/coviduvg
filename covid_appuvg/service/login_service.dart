import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:covid_appuvg/models/api_response.dart';
import 'package:covid_appuvg/models/users.dart';

class LoginService{
  static const API = 'API';
  static const headers = {
    'apiKey': 'FutureKey'
  };
  Future<APIResponse<List<User>>> getUserList(){
    return http.get(API+'/Users', headers: headers).then((data){
      if (data.statusCode == 200){
        final jsonData = json.decode(data.body);
        final users = <User>[];
        for(var item in jsonData){
          final user = User(
              name: item['user'],
              pass: item['password']
          );
          users.add(user);
        }
        return APIResponse<List<User>>(data: users);
      }
      return APIResponse<List<User>>(error: true, errorMessage: 'An error ocurred');
    }).catchError((_) => APIResponse<List<User>>(error: true, errorMessage: 'An error ocurred'));
  }
}