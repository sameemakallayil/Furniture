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
 PageController pageController=PageController(initialPage: 0);
 List<Widget> screens=[
   HomePageView(),
   CategoriesView(),
   WhishlistView(),
   NotificationView(),
   ProfileView(),
 ];
  // int get selectedIndex => _selectedIndex;
  // set selectedIndex(int index) {
  //   _selectedIndex = index;
  //   pageController.jumpToPage(index);
  //   notifyListeners(); // Notify listeners of state change
  // }
  void onChanged(int index) {
    currentPageIndex = index;
    notifyListeners();// Update selected index
  }
  // void Destinationselected(int index) {
  //   // print('Selected index changed to: $index');
  //
  //   currentPageIndex = index; // Update selected index
  //   notifyListeners(); // Notify listeners of state change
  //
  // }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
    notifyListeners(); // Notify listeners of state change

  }
  // Future<void> login(BuildContext context) async{}
  void Destinationselected(int index)  {
    // currentPageIndex = index;
    currentPageIndex=index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  // void updateTitle() {
  //   notifyListeners();
  // }

  // void nextPage() {
  //   navigationService.navigateTo(Routes.notificationView);
  // }
}
