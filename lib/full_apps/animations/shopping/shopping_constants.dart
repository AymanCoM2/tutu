import './ions/shopping/models/cart.dart';
import './ions/shopping/models/category.dart';
import './ions/shopping/models/product.dart';

class ShoppingCache {
  static List<Category>? categories;
  static List<Product>? products;
  static List<Cart>? carts;

  static bool isFirstTime = true;
}
