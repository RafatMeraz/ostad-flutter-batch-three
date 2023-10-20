import 'package:ecommerce/data/models/cart_list_model.dart';
import 'package:ecommerce/data/models/network_response.dart';
import 'package:ecommerce/data/services/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class CartListController extends GetxController {
  bool _getCartListInProgress = false;
  String _message = '';
  CartListModel _cartListModel = CartListModel();
  double _totalPrice = 0;

  bool get getCartListInProgress => _getCartListInProgress;

  String get message => _message;

  CartListModel get cartListModel => _cartListModel;

  double get totalPrice => _totalPrice;

  Future<bool> getCartList() async {
    _getCartListInProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller.getRequest(Urls.getCartList);
    _getCartListInProgress = false;
    if (response.isSuccess) {
      _cartListModel = CartListModel.fromJson(response.responseJson!);
      _calculateTotalPrice();
      update();
      return true;
    } else {
      _message = 'get cart list failed! Try again';
      return false;
    }
  }

  Future<bool> removeFromCart(int id) async {
    _getCartListInProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller.getRequest(Urls.removeFromCart(id));
    _getCartListInProgress = false;
    if (response.isSuccess) {
      _cartListModel.data?.removeWhere((element) => element.productId == id);
      _calculateTotalPrice();
      update();
      return true;
    } else {
      _message = 'get cart list failed! Try again';
      return false;
    }
  }

  void changeItem(int cartId, int noOfItems) {
    _cartListModel.data?.firstWhere((cartData) => cartData.id == cartId).quantity = noOfItems;
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    _totalPrice = 0;
    for (CartData data in _cartListModel.data ?? []) {
      _totalPrice += ((data.quantity ?? 1) *
          (double.tryParse(data.product?.price ?? '0') ?? 0));
    }
    update();
  }

}