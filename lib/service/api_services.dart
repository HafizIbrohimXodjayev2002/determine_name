import 'dart:convert';

import 'package:determine_name/api/apis.dart';
import 'package:determine_name/models/determine_name_model.dart';
import 'package:http/http.dart';

class ApiServices {
  ApiClient _apiClient = ApiClient();

  Future<DetermineNameModel?> determineNamesfromApi({required String name}) async {
    try {
      Response response = await _apiClient.determineName(name: name);
      print("RESPONSE BODY ______________________ ${response.body}");
      if (response.statusCode == 200) {
        DetermineNameModel model = DetermineNameModel.fromJson(jsonDecode(response.body));
        print("MY MODEL __________________ ${model.toJson()}");
        return model;
      }
    } catch (e) {
      print("ERROR ______________________ $e");
    }
  }

}