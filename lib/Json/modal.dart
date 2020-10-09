import 'dart:convert';
import 'package:http/http.dart';

class json_parsing {
  final String url;

  json_parsing(this.url);
  Future getData() async {
    Response response = await get(Uri.encodeFull(url));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
  }
}
