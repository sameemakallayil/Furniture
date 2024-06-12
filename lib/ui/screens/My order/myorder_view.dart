import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'myorder_viewmodel.dart';

class MyorderView extends StatelessWidget {
  const MyorderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyorderViewModel>.nonReactive(
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
          title: Text('My Orders',
            style: TextStyle(fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500),),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFFFFFF),
        ),
        body: SingleChildScrollView(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 273,
                      height: 40,
                      decoration: BoxDecoration(
                        color:Color(0xffFFFFFF) ,

                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: Color(0xffA08C62)),

                      ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: 5,right: 10,top: 5,bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:('Search in orders'),
                              hintStyle: TextStyle(
                                color: Color(0xffA1A0A0),
                                fontSize: 10,
                                fontWeight: FontWeight.w500

                              ),
                              prefixIcon:
                              Icon(
                                Icons.search,
                                color: Color(0xffA1A0A0),
                                size:20,
                              ),

                            ),
                          ),
                        )
                    ),
                    Container(
                      width: 73,
                      height: 40,
                      decoration: BoxDecoration(
                        color:Color(0xffFFFFFF) ,

                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: Color(0xffA08C62)),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.filter_list,size: 18,color: Color(0xff000000),),
                            Text('Filter',
                              style: TextStyle(fontSize: 10,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 390,
                height: 9,
                color: Color(0xffE9E9E9),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [

                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xff00B272),
                      child: Icon(Icons.hexagon_outlined,size: 20,color: Color(0xffFFFFFF),),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('On Process',
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff00B272),
                              fontWeight: FontWeight.w500),),
                        Text('Arriving by sat, 2 dec',
                          style: TextStyle(fontSize: 10,
                              color: Color(0xff000000),
                              ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                children:[
                  Container(
                    width: 390,
                    height: 166,
                    color: Color(0xffE9E9E9),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,10,15,10),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/newarr2.png',
                                width: 103,
                                height: 103,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My art desgin',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    'Eames single chair',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'White',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    'Order ID #12345678910',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(height:5),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 111,
                                        height: 30,
                                        child: ElevatedButton(
                                          onPressed: () {

                                          },

                                          child:  Text(
                                            'Cancel',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff000000),
                                            ),
                                          ),

                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xffFFFFFF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero)),
                                        ),
                                      ),
                                      SizedBox(width: 15,),
                                      SizedBox(
                                        width: 111,
                                        height: 30,
                                        child: ElevatedButton(
                                          onPressed: () {

                                          },

                                          child:  Text(
                                            'Replace',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff000000),
                                            ),
                                          ),

                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xffFFFFFF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero)),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height:5),
                          Text(
                            'Status : Shipped',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.find_replace_outlined,size: 18,color: Color(0xff000000),),
                              SizedBox(width: 10,),
                              Text(
                                'Replacement is available',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(width: 150,),
                              Text(
                                'Know More',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff903913),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  
                  Positioned(
                      top:15,
                      right: 10,
                      child: IconButton(onPressed: (){

                        viewModel.orderTrack();
                      },
                      icon: Icon(Icons.navigate_next,size: 30,
                      color: Color(0xff903913),)))
                ] 
              ),
              SizedBox(height: 10,),

              Container(
                width: 390,
                height: 9,
                color: Color(0xffE9E9E9),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [

                    Stack(
                      children:[
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffA08C62),
                          child: Icon(Icons.hexagon_outlined,size: 20,color: Color(0xffFFFFFF),),
                        ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 6,
                        ),
                      ),
                  ),
                ),
                      ]
                    ),

                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivered',
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff00B272),
                              fontWeight: FontWeight.w500),),
                        Text('On Wed, 27 sep',
                          style: TextStyle(fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ),
              Stack(
                  children:[
                    Container(
                      width: 390,
                      height: 166,
                      color: Color(0xffE9E9E9),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,10,15,10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/newarr1.png',
                                  width: 103,
                                  height: 103,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Boho Home',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'Brown armless couch',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Brown',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'Order ID #12345678911',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000)),
                                    ),
                                    SizedBox(height:5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 111,
                                          height: 30,
                                          child: ElevatedButton(
                                            onPressed: () {

                                            },

                                            child:  Text(
                                              'Cancel',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff000000),
                                              ),
                                            ),

                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xffFFFFFF),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.zero)),
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        SizedBox(
                                          width: 111,
                                          height: 30,
                                          child: ElevatedButton(
                                            onPressed: () {

                                            },

                                            child:  Text(
                                              'Replace',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff000000),
                                              ),
                                            ),

                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xffFFFFFF),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.zero)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height:5),
                            Row(
                              children: [
                                Icon(Icons.fire_truck_outlined,size: 18,color: Color(0xff000000),),
                                SizedBox(width:5),

                                Text(
                                  'Exchange/Return window closed on 11 oct',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Rate this product',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Icon(Icons.star_border_outlined,size: 18,color: Color(0xff903913),),
                                Icon(Icons.star_border_outlined,size: 18,color: Color(0xff903913),),
                                Icon(Icons.star_border_outlined,size: 18,color: Color(0xff903913),),
                                Icon(Icons.star_border_outlined,size: 18,color: Color(0xff903913),),
                                Icon(Icons.star_border_outlined,size: 18,color: Color(0xff903913),),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                        top:15,
                        right: 10,
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.navigate_next,size: 30,
                              color: Color(0xff903913),)))
                  ]
              ),
              SizedBox(height: 20,),
              Container(
                width: 390,
                height: 9,
                color: Color(0xffE9E9E9),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [

                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xff998558),
                      child: Icon(Icons.close,size: 20,color: Color(0xffFFFFFF),),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cancelled',
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff00B272),
                              fontWeight: FontWeight.w500),),
                        Text('On Fri, 11 aug as per your request',
                          style: TextStyle(fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                  children:[
                    Container(
                      width: 390,
                      height: 129,
                      color: Color(0xffE9E9E9),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,10,15,10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/newarr1.png',
                                  width: 103,
                                  height: 103,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Boho Home',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'Eames single chair',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'White',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'Order ID #12345678910',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000)),
                                    ),
                                    SizedBox(height:5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 111,
                                          height: 30,
                                          child: ElevatedButton(
                                            onPressed: () {

                                            },

                                            child:  Text(
                                              'Cancel',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff000000),
                                              ),
                                            ),

                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xffFFFFFF),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.zero)),
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        SizedBox(
                                          width: 111,
                                          height: 30,
                                          child: ElevatedButton(
                                            onPressed: () {

                                            },

                                            child:  Text(
                                              'Replace',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff000000),
                                              ),
                                            ),

                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xffFFFFFF),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.zero)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),

                    Positioned(
                        top:15,
                        right: 10,
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.navigate_next,size: 30,
                              color: Color(0xff903913),)))
                  ]
              ),
            ],
          ),
        ),

      ),
      viewModelBuilder: () => MyorderViewModel(),
    );
  }
}
