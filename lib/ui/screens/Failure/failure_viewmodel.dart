
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class FailureViewModel extends BaseViewModel {

  void updateTitle() {
    notifyListeners();
  }
  void homepage(){
    navigationService.navigateTo(Routes.dashboardView);
  }
}