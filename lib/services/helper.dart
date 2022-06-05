import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/databaseModel.dart';

class RequestService{
String baseUrlUser = 'https://10.0.2.2:5001/api/Users';
String baseUrlPost = 'https://10.0.2.2:5001/api/Posts';
 Future<List<TyperModel>?> getData() async {
    try {
      var _response = await http.get(Uri.parse(baseUrlUser));
      if (_response.statusCode == 200) {
        final parsed = json.decode(_response.body).cast<Map<String, dynamic>>();
        return parsed
            .map<TyperModel>((json) => TyperModel.fromJson(json))
            .toList();
           
      }
    } on Exception catch (ex) {
      print(ex.toString());
    }
 }
}

