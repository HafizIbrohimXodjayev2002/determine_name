import 'dart:convert';

import 'package:determine_name/api/apis.dart';
import 'package:determine_name/models/determine_name_model.dart';
import 'package:http/http.dart';

class ApiServices {
  final ApiClient _apiClient = ApiClient();

  Future<DetermineNameModel?> determineNamesfromApi({required String name}) async {
    try {
      Response response = await _apiClient.determineName(name: name);
      if (response.statusCode == 200) {
        return DetermineNameModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
        return null;
    }
    return null;
  }
}