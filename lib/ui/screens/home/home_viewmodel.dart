import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:furnitureproject/app/utils.dart';

import '../../../app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  // int counter = 0;
   PageController _pageController = PageController(initialPage: 0);
   PageController get pagecontroller => _pageController;

  int _activePage = 0;
  int get activepage => _activePage;



  void updatePages(int page) {

         _activePage=page;

    notifyListeners();
  }
   void nextPage(){
    navigationService.navigateTo(Routes.loginView);
   }
}
