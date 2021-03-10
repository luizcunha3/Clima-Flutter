import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url, this.path, this.variables);

  final String url;
  final String path;
  final Map<String, String> variables;

  Future getData() async {
    http.Response response = await http.get(
      Uri.https(url, path, variables),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      print(response.body);
      return decodedData;
    } else {
      int responseCode = response.statusCode;
      print('response code: $responseCode');
    }
  }
}
