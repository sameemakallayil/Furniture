

import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class MyorderViewModel extends BaseViewModel {

  void updateTitle() {
    notifyListeners();
  }
  void orderTrack(){
    navigationService.navigateTo(Routes.orderTrackingView);
  }
}