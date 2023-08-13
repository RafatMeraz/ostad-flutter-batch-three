import 'package:get/get.dart';
import 'package:intro_widget/data/models/network_response.dart';
import 'package:intro_widget/data/models/summary_count_model.dart';
import 'package:intro_widget/data/services/network_caller.dart';
import 'package:intro_widget/data/utils/urls.dart';

class SummaryCountController extends GetxController {
  bool _getCountSummaryInProgress = false;
  SummaryCountModel _summaryCountModel = SummaryCountModel();
  String message = '';

  bool get getCountSummaryInProgress => _getCountSummaryInProgress;

  SummaryCountModel get summaryCountModel => _summaryCountModel;

  Future<bool> getCountSummary() async {
    _getCountSummaryInProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.taskStatusCount);
    _getCountSummaryInProgress = false;
    if (response.isSuccess) {
      _summaryCountModel = SummaryCountModel.fromJson(response.body!);
      update();
      return true;
    } else {
      message = 'Count summary get failed! Try again.';
      update();
      return false;
    }
  }
}
