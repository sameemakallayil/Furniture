import 'package:stacked/stacked.dart';

class CategoriesViewModel extends BaseViewModel {
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }
  void nextPage(){
    // navigationService.navigateTo(Routes.aboutView);
  }
}