import 'package:myapp/features/products/domain/entities/Product.dart';


abstract class ProductoRepository {
  Future<String> postAddProduct(Product);
  Future<String> putUpdateProduct(String productId);
  Future<String> deleteProduct(String productId);

}