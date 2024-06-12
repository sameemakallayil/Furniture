

import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class AddressViewModel extends BaseViewModel {

  void updateTitle() {
    notifyListeners();
  }
  void nextPage(){
    navigationService.navigateTo(Routes.paymentView);
  }
}