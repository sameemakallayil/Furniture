import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class NotificationViewModel extends BaseViewModel {
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }
  void nextPage(){
    // navigationService.navigateTo(Routes.aboutView);
  }
}