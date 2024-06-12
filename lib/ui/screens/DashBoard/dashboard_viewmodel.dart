import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Catogories/categories_view.dart';
import 'package:furnitureproject/ui/screens/HomePage/homepage_view.dart';
import 'package:furnitureproject/ui/screens/Notifications/notification_view.dart';
import 'package:furnitureproject/ui/screens/Profile/profile_view.dart';
import 'package:furnitureproject/ui/screens/Whishlist/whishlist_view.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class DashboardViewModel extends BaseViewModel {
  int currentPageIndex = 0;
  int selectedIndex=0;
 PageController pageController=PageController();
 List<Widget> screens=[
   HomePageView(),
   CategoriesView(),
   WhishlistView(),
   NotificationView(),
   ProfileView(),
 ];
 void onChanged(int index){

   selectedIndex=index;
   notifyListeners();

 }

  void Destinationselected(int selectedIndex) {
    // currentPageIndex = index;
    pageController.jumpToPage(selectedIndex);
    notifyListeners();
  }

  void updateTitle() {
    notifyListeners();
  }

  void nextPage() {
    navigationService.navigateTo(Routes.notificationView);
  }
}
