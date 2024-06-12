import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'categories_viewmodel.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          leadingWidth:35,
          leading: Padding(
            padding:  EdgeInsets.only(left:10),
            child: ElevatedButton(
              onPressed: () {  },
              child: Icon(Icons.arrow_back_ios,
              size: 15,
              color: Color(0xffFFFFFF),),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.only(left: 8),
                backgroundColor: Color(0xff998558),
              ),
            ),
          ),
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.search,
             color: Color(0xff000000),
             size: 28,),
             onPressed: () {
             },
           ),
         ],
          title: Text('Categories',
          style: TextStyle(fontSize: 18,
          color: Color(0xff000000),
          fontWeight: FontWeight.w500),),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFFFFFF),
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
            child: Column(
              children: [
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/sofa.png')),
                        SizedBox(width: 20,),
                        Text("Sofas",
                        style: TextStyle(fontSize: 12,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),),
                        SizedBox(width: 155,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                            color: Color(0xff903913),
                                size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/bed.png')),
                        width: 75,
                        height: 64,),
                        SizedBox(width: 20,),
                        Text("Bed",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 175,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/chair.png')),
                        width: 57,
                        height: 70,),
                        SizedBox(width: 20,),
                        Text("Chair",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 185,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/table.png')),
                          width: 79,
                          height: 57,),
                        SizedBox(width: 20,),
                        Text("Table",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 165,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/stool.png')),
                          width: 60,
                          height: 83,),
                        SizedBox(width: 20,),
                        Text("stool",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 185,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/diningtable.png')),
                          width: 97,
                          height: 74,),
                        SizedBox(width: 20,),
                        Text("Dining table ",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 105,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/cabnet.png')),
                          width: 101,
                          height: 67,),
                        SizedBox(width: 20,),
                        Text("Cabnet",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 130,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/lamp.png')),
                          width: 83,
                          height: 83,),
                        SizedBox(width: 20,),
                        Text("Lamp",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 150,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 357,
                  height: 85,
                  decoration: BoxDecoration(
                      color:Color(0xffFFFFFF) ,

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0,
                          spreadRadius: 0
                      ),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0,-1.0),
                            blurRadius: 4.0,
                            spreadRadius: 0
                        ),]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Image(image: AssetImage('assets/images/bookshelf.png')),
                          width: 67,
                          height: 80,),
                        SizedBox(width: 20,),
                        Text("Bookshelf",
                          style: TextStyle(fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),),
                        SizedBox(width: 140,),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Color(0xff903913),
                              size: 20,))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
      viewModelBuilder: () => CategoriesViewModel(),
    );
  }
}
