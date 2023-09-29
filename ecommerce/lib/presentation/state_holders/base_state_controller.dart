import 'package:get/get.dart';

abstract class BaseStateController<T> extends GetxController {
  bool inProgress = false;
  String errorMessage = '';

  Future<bool> call(BaseParams params);
}

abstract class BaseParams {}