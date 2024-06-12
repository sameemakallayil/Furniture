import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }
  void nextPage(){
    // navigationService.navigateTo(Routes.aboutView);
  }
}