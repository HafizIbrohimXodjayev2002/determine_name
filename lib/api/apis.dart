import 'package:http/http.dart' as http;

class ApiClient {
   static const String baseUrl = "https://api.genderize.io/?name="; 

  Future<http.Response> determineName({required String name}) async {
    var uri = Uri.parse("$baseUrl$name");
    print("URI: $uri");
    return await http.get(uri);
  }
}