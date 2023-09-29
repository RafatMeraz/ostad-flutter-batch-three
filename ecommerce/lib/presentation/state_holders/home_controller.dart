import 'package:ecommerce/presentation/state_holders/base_state_controller.dart';

class HomeController extends BaseStateController {
  @override
  Future<bool> call(BaseParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class HomeParams extends BaseParams {
  final String userName;
  final String password;

  HomeParams(this.userName, this.password);
}

main() {
  HomeParams params = HomeParams('sdfd', 'password');
  HomeController homeController = HomeController();
  homeController.call(params);
}