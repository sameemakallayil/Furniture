import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/HomePage/homepage_viewmodel.dart';
import 'package:furnitureproject/ui/screens/ProductDetail/productdetail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProductDetailView extends StatelessWidget {
  Product product;
  ImageModel image;

  ProductDetailView({Key? key, required this.product, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductDetailViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            leadingWidth: 35,
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: Color(0xffFFFFFF),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.only(left: 8),
                  backgroundColor: Color(0xff998558),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.share_outlined,
                  color: Color(0xff000000),
                  size: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xff000000),
                  size: 24,
                ),
                onPressed: () {},
              ),
            ],
            title: Text(
              'Detail',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            toolbarHeight: 80,
            backgroundColor: Color(0xffFFFFFF),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [

                      Container(
                        width: 390,
                        height:1300,
                      ),
                    Positioned(
                      child: Container(
                            width: 390,
                            height: 400,
                            child: Stack(
                              children:[
                                Image.asset(
                                  image.assetPath,
                                  fit: BoxFit.fitHeight,
                                  height: 400,

                                ),
                                Positioned(
                                    right: 15,
                                    top: 15,
                                    child: CircleAvatar(
                                      backgroundColor:Color(0xffFFFFFF),
                                      child: IconButton(
                                        onPressed: () {
                                        },
                                        icon: Icon(Icons.favorite,color: Color(0xffD9D9D9)),),

                                    )),
                                Positioned(
                                  top: 15,
                                    left: 15,
                                    child: Container(height: 117,
                                width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffFFFFFF),

                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5,bottom: 5),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: ElevatedButton(onPressed: (){},
                                                child: null,
                                                style: ElevatedButton.styleFrom(
                                                  shape: CircleBorder(),
                                                  backgroundColor: Color(0xffDEDCCD)
                                                ),
                                                  ),
                                            ),
                                            Expanded(
                                              child: ElevatedButton(onPressed: (){},
                                                child: null,
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor: Color(0xffA4B4FF)
                                                ),
                                              ),
                                            ),

                                            Expanded(
                                              child: ElevatedButton(onPressed: (){},
                                                child: null,
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor: Color(0xffD8ADF4)
                                                ),
                                              ),
                                            ),

                                            Expanded(
                                              child: ElevatedButton(onPressed: (){},
                                                child: null,
                                                style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    backgroundColor: Color(0xffF3C0AD)
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                )
                              ]
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                    ),
                      Positioned(
                        top: 395,
                          child:  Stack(
                            children:[
                              Container(
                                width: 390,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 0),
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(-1.0, -1.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 0),
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 15),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(product.name,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff000000)
                                            ),),
                                          SizedBox(height: 5,),

                                          Text(product.discription,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff4A5568)
                                            ),),
                                          SizedBox(height: 5,),

                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                color: Color(0xffF6DE0B),
                                                size: 16,),
                                              Icon(Icons.star,
                                                color: Color(0xffF6DE0B),
                                                size: 16,),
                                              Icon(Icons.star,
                                                color: Color(0xffF6DE0B),
                                                size: 16,),
                                              Icon(Icons.star,
                                                color: Color(0xffF6DE0B),
                                                size: 16,),
                                              Icon(Icons.star,
                                                color: Color(0xffD9D9D9),
                                                size: 16,),
                                              SizedBox(width: 10,),
                                              Text('4.8 (250 Reviews)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xff000000),
                                                ),),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Description',style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000)
                                          ),),
                                          Text('Designed the eames chair with luxurious curves in an organic\nyet structured design that holds the sitting body and provides\na feeling of relaxation while offering excellent back support.\nRead more...',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff000000)

                                            ),),
                                          SizedBox(height: 5,),

                                          Row(
                                            children: [
                                              Text('Total Price',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff000000)

                                              ),),
                                              SizedBox(width: 200,),
                                              Text(product.price,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff903913)
                                                ),)
                                            ],
                                          ),
                                          SizedBox(height: 5,),

                                          SizedBox(
                                            height: 40,
                                            width: 358,
                                            child: ElevatedButton(onPressed: (){},
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Add to Cart',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xffFFFFFF)
                                                    ),),
                                                  SizedBox(width: 10,),
                                                  Icon(Icons.shopping_cart_outlined,
                                                    color: Color(0xffFFFFFF),size: 19,),
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xffC1A76C)
                                              ),

                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(
                                            height: 40,
                                            width: 358,
                                            child: ElevatedButton(onPressed: (){},
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,

                                                children: [
                                                  Text('Buy Now',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xffFFFFFF)
                                                    ),),
                                                  SizedBox(width: 10,),
                                                  Icon(Icons.shopping_bag_outlined,
                                                    color: Color(0xffFFFFFF),size: 19,)
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xff998558)
                                              ),

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0xffD9D9D9),
                                      height: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 15,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Top Highlights',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff000000)
                                            ),),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Text('Brand',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                              SizedBox(width: 100,),
                                              Text('My Art Design',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                            ],
                                          ),
                                          SizedBox(height: 10,),

                                          Row(
                                            children: [
                                              Text('Color',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                              SizedBox(width: 104,),
                                              Text('White',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                            ],
                                          ),
                                          SizedBox(height: 10,),

                                          Row(
                                            children: [
                                              Text('Material',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                              SizedBox(width: 88,),
                                              Text('60D x 70W x 82H (cm)',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                            ],
                                          ),
                                          SizedBox(height: 10,),

                                          Row(
                                            children: [
                                              Text('Size',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                              SizedBox(width: 110,),
                                              Text('Standard',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                            ],
                                          ),
                                          SizedBox(height: 10,),

                                          Row(
                                            children: [
                                              Text('Net Quantity',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                              SizedBox(width: 63,),
                                              Text('1.00 count',
                                                style: TextStyle(
                                                    fontSize: 12,color: Color(0xff000000)

                                                ),),
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Stack(
                                            children: [
                                              Container(
                                                width: 390,
                                                height: 60,
                                              ),
                                              // Icon(Icons.circle,size: 6,color: Color(0xff903913),),
                                              Positioned(
                                                  left: 5,
                                                  top: 10,
                                                  child: Text("• ",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color(0xff903913)
                                                    ),)),

                                              Positioned(
                                                left: 15,
                                                top: 13,

                                                child: Text(' This Upholstered Eames chair brings trendsetting good\n  looks to your living room with its gently curved corners\n  and sleek yet sturdy wooden legs. ',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff000000)
                                                  ),),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Container(
                                                width: 390,
                                                height: 40,
                                              ),
                                              // Icon(Icons.circle,size: 6,color: Color(0xff903913),),
                                              Positioned(
                                                  left: 5,
                                                  top: 10,
                                                  child: Text("• ",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color(0xff903913)
                                                    ),)),

                                              Positioned(
                                                left: 15,
                                                top: 13,

                                                child: Text('  Living Room, Dining Room, Home office, Bedroom',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff000000)
                                                  ),),
                                              ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Container(
                                                width: 390,
                                                height: 120,
                                              ),
                                              // Icon(Icons.circle,size: 6,color: Color(0xff903913),),
                                              Positioned(
                                                  left: 5,
                                                  child: Text("• ",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color(0xff903913)
                                                    ),)),

                                              Positioned(
                                                left: 18,

                                                child: Text('Care Instructions - Avoid a cleaning product that contains\nammonia or bleach. For cleaning always choose a mild\ncleaning agent without sanding qualities. Avoid direct\nsunlight & humid environment. Remember that the care\ninstructions can very based on the type of wood, finish\nand construction of the furniture. Always consult the\nmanufacturer’s recommendations if available.',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff000000)
                                                  ),),
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),

                                    Container(
                                      width: 400,
                                      height: 105,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF4F4F4),
                                          border: Border(
                                            top: BorderSide(
                                                color: Color(0xffD9D9D9),
                                                width: 3
                                            ),
                                            bottom: BorderSide(
                                                color: Color(0xffD9D9D9),
                                                width: 3
                                            ),

                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(20,10,20,10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 1.0,right: 5),
                                                    child: Icon(
                                                      Icons.fire_truck_outlined,
                                                      size: 25,
                                                      color: Color(0xffFFFFFF),
                                                    ),
                                                  ),
                                                  style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    padding: EdgeInsets.only(left: 8),
                                                    backgroundColor: Color(0xff998558),
                                                  ),
                                                ),
                                                Text('Free Delivery',style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xff000000)
                                                ),)
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 1.0,right: 7),
                                                    child: Icon(
                                                      Icons.rotate_left_outlined,
                                                      size: 25,
                                                      color: Color(0xffFFFFFF),
                                                    ),
                                                  ),
                                                  style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    padding: EdgeInsets.only(left: 8),
                                                    backgroundColor: Color(0xff998558),
                                                  ),
                                                ),
                                                Text('15 Days\nReplacement',style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xff000000)
                                                ),
                                                  textAlign: TextAlign.center,)
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 1.0,right: 6),
                                                    child: Icon(
                                                      Icons.safety_check,
                                                      size: 25,
                                                      color: Color(0xffFFFFFF),
                                                    ),
                                                  ),
                                                  style: ElevatedButton.styleFrom(
                                                    shape: CircleBorder(),
                                                    padding: EdgeInsets.only(left: 8),
                                                    backgroundColor: Color(0xff998558),
                                                  ),
                                                ),
                                                Text('1 year\nwarranty',style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xff000000)
                                                ),
                                                  textAlign: TextAlign.center,)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20,)
                                  ],
                                ),

                              ),
                              Positioned(
                                top: 25,
                                  right: 15,
                                  child: Container(
                                    width: 96,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color:Color(0xffFFFFFF) ,

                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Color(0xff998558)),

                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 22,
                                            height: 22,
                                            child: ElevatedButton(
                                              onPressed: () {},

                                                child: Icon(Icons.remove,
                                                size: 20,
                                                color: Color(0xffFFFFFF),),


                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(),
                                                padding: EdgeInsets.only(left: 1),
                                                backgroundColor: Color(0xff998558),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Text('1',style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff000000)
                                          ),),
                                          SizedBox(width: 5,),
                                          SizedBox(
                                            width: 22,
                                            height: 22,
                                            child: ElevatedButton(
                                              onPressed: () {},

                                              child: Icon(Icons.add,
                                                size: 20,
                                                color: Color(0xffFFFFFF),),


                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(),
                                                padding: EdgeInsets.only(left: 1),
                                                backgroundColor: Color(0xff998558),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                            ] 
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )

          // Column(
          //   children: [
          //     Container(
          //       width: 390,
          //       height: 400,
          //       child: Image.asset(
          //         image.assetPath,
          //         fit: BoxFit.fitHeight,
          //       ),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.zero,
          //       ),
          //     ),
          //     Container(
          //       width: 390,
          //       decoration: BoxDecoration(
          //           color: Color(0xffFFFFFF),
          //           borderRadius: BorderRadius.circular(10),
          //           boxShadow: [
          //             BoxShadow(
          //                 color: Color(0x40000000),
          //                 offset: Offset(1.0, 1.0),
          //                 blurRadius: 4.0,
          //                 spreadRadius: 0),
          //             BoxShadow(
          //                 color: Color(0x40000000),
          //                 offset: Offset(-1.0, -1.0),
          //                 blurRadius: 4.0,
          //                 spreadRadius: 0),
          //           ]),
          //       child: Column(
          //         children: [
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Text(product.name)
          //         ],
          //       ),
          //     )
          //   ],
          // )
      ),
      viewModelBuilder: () => ProductDetailViewModel(),
    );
  }
}
