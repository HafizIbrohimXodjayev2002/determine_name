import 'package:http/http.dart' as http;

class ApiClient {
   static const String baseUrl = "https://api.genderize.io/"; 

  Future<http.Response> determineName({required String name}) async {
    var uri = Uri.parse("$baseUrl?name=$name");
    return await http.get(uri);
  }
}