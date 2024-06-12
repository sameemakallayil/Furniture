import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class MenuViewModel extends BaseViewModel {
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }
  void myorder(){
    navigationService.navigateTo(Routes.myorderView);
  }
}