

import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class PaymentViewModel extends BaseViewModel {

  void updateTitle() {
    notifyListeners();
  }
  void success(){
    navigationService.navigateTo(Routes.successView);
  }
  void failure(){
    navigationService.navigateTo(Routes.failureView);
  }
}