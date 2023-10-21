import 'package:ecommerce/data/models/invoice_create_response_model.dart';
import 'package:ecommerce/data/models/network_response.dart';
import 'package:ecommerce/data/services/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class CreateInvoiceController extends GetxController {
  bool _inProgress = false;
  String _message = '';
  InvoiceCreateResponseModel _invoiceCreateResponseModel = InvoiceCreateResponseModel();

  bool get inProgress => _inProgress;

  String get message => _message;

  InvoiceCreateData? get invoiceCreateResponseModel => _invoiceCreateResponseModel.data?.first;

  Future<bool> createInvoice() async {
    _inProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller.getRequest(Urls.createInvoice,);
    _inProgress = false;
    update();
    if (response.isSuccess && response.responseJson!['msg'] == 'success') {
      _invoiceCreateResponseModel = InvoiceCreateResponseModel.fromJson(response.responseJson!);
      return true;
    } else {
      _message = 'Invoice creation failed! Try again';
      return false;
    }
  }
}