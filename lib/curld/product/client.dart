
import "dart:io";
import "dart:async";
import 'dart:convert';
import "package:http/http.dart" as http;

class Client {
  http.Client client = new http.Client();

  Future<dynamic> load() async {
    http.Response response = await this.client.get(
      'http://qa.inventory.excelsiorcommerce.com/v1/products/warehouse/curld'
    );
    if (response.statusCode != HttpStatus.OK) {
      throw new Error();
    }
    return JSON.decode(response.body);
  }
}
