

import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class SuccessViewModel extends BaseViewModel {

  void updateTitle() {
    notifyListeners();
  }
  void homepage(){
    navigationService.navigateTo(Routes.dashboardView);
  }
}