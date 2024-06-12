import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class WhishlistViewModel extends BaseViewModel {


  List itemsname = [
    {'name':'Brown Armless sofa','discription':'My site','price':'\$ 156'},
    {'name':'Eames single chair','discription':'My art design','price':'\$ 95'},
    {'name':'Black Armless sofa','discription':'My site','price':'\$ 156'},
    {'name':'Eames single chair','discription':'My art design','price':'\$ 95'},
    {'name':'Brown Armless sofa','discription':'My site','price':'\$ 156'},
    {'name':'Eames single chair','discription':'My art design','price':'\$ 95'},
    {'name':'Brown Armless sofa','discription':'My site','price':'\$ 156'},
    {'name':'Eames single chair','discription':'My art design','price':'\$ 95'},

  ];
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
  List itemspoint=['4.5','4.8','4.5','4.8','4.5','4.8','4.5','4.8'];

  void updateTitle() {
    notifyListeners();
  }
  void nextPage(){
    // navigationService.navigateTo(Routes.aboutView);
  }
}