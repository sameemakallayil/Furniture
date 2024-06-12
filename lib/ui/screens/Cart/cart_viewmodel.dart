
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class CartViewModel extends BaseViewModel {
  bool isChecked = true;

  void checkboxcheck(bool value){
    isChecked = value;
    notifyListeners();

  }
  void nextPage(){
    navigationService.navigateTo(Routes.addressView);
  }
}