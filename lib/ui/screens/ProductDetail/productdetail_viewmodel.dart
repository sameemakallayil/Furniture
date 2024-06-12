import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class ProductDetailViewModel extends BaseViewModel {
  List<Image> itemsimage=[
    Image(image: AssetImage('assets/images/newarr1.png')),
    Image(image: AssetImage('assets/images/newarr2.png')),
    Image(image: AssetImage('assets/images/newarr1.png')),
    Image(image: AssetImage('assets/images/newarr2.png')),
    Image(image: AssetImage('assets/images/newarr1.png')),
    Image(image: AssetImage('assets/images/newarr2.png')),
    Image(image: AssetImage('assets/images/newarr1.png')),
    Image(image: AssetImage('assets/images/newarr2.png')),

  ];

  void updateTitle() {
    notifyListeners();
  }
  // void nextPage(){
  //   navigationService.navigateTo(Routes.aboutView);
  // }
}