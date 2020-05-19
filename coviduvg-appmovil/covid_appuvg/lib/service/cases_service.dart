import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:covid_appuvg/models/api_response.dart';
import 'package:covid_appuvg/models/cases_for_listing.dart';

class CasesService{
  static const API = 'https://jsonplaceholder.typicode.com/users';
  Future<APIResponse<List<CasesForListing>>> getUserList(){
    return http.get(API).then((data){
      if (data.statusCode == 200){
        final jsonData = json.decode(data.body);
        final cases = <CasesForListing>[];
        for(var item in jsonData){
          final iCase = CasesForListing(
              name: item['name'],
              number: item['number'],
              status: item['status'],
          );
          cases.add(iCase);
        }
        return APIResponse<List<CasesForListing>>(data: cases);
      }
      return APIResponse<List<CasesForListing>>(error: true, errorMessage: 'An error ocurred');
    }).catchError((_) => APIResponse<List<CasesForListing>>(error: true, errorMessage: 'An error ocurred api'));
  }
}