import "dart:async";
import "package:curld/curld/product/entity.dart";
import "package:curld/curld/product/client.dart";

class ProductRepository {
  Client client = new Client();
  Product create() => new Product();

  Future<Product> load() async {
    Product product = await this.client.load();
    return product;
  }
}
