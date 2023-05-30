import 'restaurant.dart';

main() {
  Restaurant kfc = Restaurant(1234);
  final String result = kfc.order('Burger');
  print(result);
  final String anotherOrder = kfc.order('Chicken fry');
  print(anotherOrder);
  print(kfc.toString());
  print(kfc.getId());

}