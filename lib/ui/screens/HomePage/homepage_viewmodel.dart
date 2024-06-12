import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/ProductDetail/productdetail_view.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class HomePageViewModel extends BaseViewModel {
  SearchController controller = SearchController();
  List items = [
    "Bed",
    "Chair",
    "Sofas",
    "Table",
    "Stool",
    "Dining Table",
    "Cabnet",
    "Lamp",
    "Book shelf",
  ];
  List<Icon> Iconcategories = [
    Icon(Icons.bed_outlined,color: Color(0xff686262),),
    Icon(Icons.chair_outlined,color: Color(0xff686262),),
    Icon(Icons.chair_alt,color: Color(0xff686262),),
    Icon(Icons.table_restaurant_outlined,color: Color(0xff686262),),
    Icon(Icons.chair_alt_rounded,color: Color(0xff686262),),
    Icon(Icons.table_bar_outlined,color: Color(0xff686262),),
    Icon(Icons.storage_outlined,color: Color(0xff686262),),
    Icon(Icons.light_outlined,color: Color(0xff686262),),
    Icon(Icons.library_books_outlined,color: Color(0xff686262),),

  ];
  List<Product> itemsname = [
    Product(name:'Brown Armless sofa',discription:'My site',price:'\$ 156.00'),
    Product(name:'Eames single chair',discription:'My art design',price:'\$ 95.00'),
    Product(name:'Brown Armless sofa',discription:'My site',price:'\$ 156.00'),
    Product(name:'Eames single chair',discription:'My art design',price:'\$ 95.00'),
    Product(name:'Brown Armless sofa',discription:'My site',price:'\$ 156.00'),
    Product(name:'Eames single chair',discription:'My art design',price:'\$ 95.00'),


    // {'name':'Eames single chair','discription':'My art design','price':'Price \$ 95.00'},
    // {'name':'Black Armless sofa','discription':'My site','price':'Price \$ 156.00'},
    // {'name':'Eames single chair','discription':'My art design','price':'Price \$ 95.00'},
    // {'name':'Brown Armless sofa','discription':'My site','price':'Price \$ 156.00'},
    // {'name':'Eames single chair','discription':'My art design','price':'Price \$ 95.00'},

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

  List<ImageModel> images = [
    ImageModel(assetPath: 'assets/images/newarr1.png'),
    ImageModel(assetPath: 'assets/images/newarr2.png'),
    ImageModel(assetPath: 'assets/images/newarr1.png'),
    ImageModel(assetPath: 'assets/images/newarr2.png'),
    ImageModel(assetPath: 'assets/images/newarr1.png'),
    ImageModel(assetPath: 'assets/images/newarr2.png'),
  ];


  List itemspoint=['4.5','4.8','4.5','4.8','4.5','4.8'];


  void updateTitle() {
    notifyListeners();
  }
  void Menu(){
    navigationService.navigateTo(Routes.menuView);
  }
  void Cart(){
    navigationService.navigateTo(Routes.cartView);
  }
  void Productlist(BuildContext context,Product itemsname, ImageModel image){
    // navigationService.navigateTo(Routes.productDetailView);
   Navigator.push(context,
     MaterialPageRoute(builder: (context) => ProductDetailView(product:itemsname,image: image)),

   );
  }
}



class Product {
  final String name;
  final String discription;

  final String price;

  Product({required this.name,required this.discription, required this.price});
}
class ImageModel {
  final String assetPath;

  ImageModel({required this.assetPath});
}