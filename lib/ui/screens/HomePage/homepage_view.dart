import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'homepage_viewmodel.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 20,right: 20,top: 65,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/circle1.png"),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 176),
                      child: Column(
                        children: [
                          Text("Hello",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xff000000)
                          ),),
                          Text("Anjali",style: TextStyle(
                              fontSize: 10,fontWeight: FontWeight.normal,color: Color(0xff000000)
                          ),)
                        ],
                      ),
                    ),
                    IconButton(onPressed: () {
                      viewModel.Cart();
                    },
                    icon: Icon(Icons.shopping_cart_outlined),
                    ),
                    IconButton(onPressed: () {
                      viewModel.Menu();
                    },
                    icon: Icon(Icons.menu),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Let’s find the\nbest furniture\nfor you",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        width: 263,
                        height: 40,
                        decoration: BoxDecoration(
                          color:Color(0xffFFFFFF) ,

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0x40000000)),

                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:('Search for furnitures...'),
                              hintStyle: TextStyle(
                                color: Color(0x40686262),
                                fontSize: 10,

                              ),
                              prefixIcon:
                              Icon(
                                Icons.search,
                                color: Color(0xff686262),
                                size:24,
                              ),

                              suffixIcon: SizedBox(
                                width:14 ,
                                height:21.11 ,
                                child: Icon(
                                  Icons.keyboard_voice_outlined,
                                  color: Color(0xff686262),
                                ),
                              ),

                            ),
                          ),
                        )
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 73,
                      height: 40,
                      decoration: BoxDecoration(
                        color:Color(0xffFFFFFF) ,

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x40000000)),

                      ),
                      child: IconButton(onPressed: () {  },
                        icon: Icon(Icons.add_a_photo_outlined,
                          color: Color(0xff1E1E1E),
                          size: 24,),

                      ),
                    ),
                  ],

                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('categories',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(width: 215,),
                    TextButton(onPressed: (){},
                        child: Text('View all',
                          style: TextStyle(fontSize: 10,
                              color: Color(0xff000000)),))
                  ],

                ),

                Container(
                  height: 64,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: viewModel.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color:Color(0xffFFFFFF) ,

                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0x40000000)),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    viewModel.Iconcategories[index],
                                    // Icon(Icons.bed_outlined,
                                    //   color: Color(0xff686262),),
                                    SizedBox(width: 5,),
                                    Text(viewModel.items[index],
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff686262)
                                      ),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('New Arrivals',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(width: 200,),
                    TextButton(onPressed: (){},
                        child: Text('View all',
                          style: TextStyle(fontSize: 10,
                              color: Color(0xff000000)),))
                  ],
                ),
                Container(
                    width: 1492,
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: viewModel.itemsname.length,
                      itemBuilder: (BuildContext context, int index) {
                        final itemsname = viewModel.itemsname[index];
                        final image = viewModel.images[index];


                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                                width: 169,
                                height: 300,
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Stack(
                                      children: [
                                        Image.asset(image.assetPath),
                                        Positioned(
                                            right: 5,
                                            top: 5,
                                            child: CircleAvatar(
                                              backgroundColor:Color(0xffFFFFFF),
                                              child: IconButton(
                                                onPressed: () {
                                                },
                                                icon: Icon(Icons.favorite,color: Color(0xffD9D9D9)),),

                                            )),
                                        Positioned(
                                          bottom: 5,
                                          left: 5,
                                          child: Container(
                                            width: 40,
                                            height: 18,
                                            decoration: BoxDecoration(
                                                color:Color(0xffFFFFFF) ,
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.star,color: Color(0xffF6DE0B),size: 15,),
                                                  Text(viewModel.itemspoint[index],
                                                      style: TextStyle(fontSize: 10,
                                                          color: Color(0xff000000))),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                      SizedBox(height: 5,),
                                      Text(itemsname.name,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000)
                                        ),),
                                      Text(itemsname.discription,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xff000000)
                                        ),),
                                      Row(
                                        children: [
                                          Text('Price ${itemsname.price}',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff000000)
                                            ),),
                                          SizedBox(width: 20,),
                                          FloatingActionButton.small(
                                              backgroundColor: Color(0xff151344),
                                              shape: CircleBorder(),
                                              child: Icon(Icons.add,color: Color(0xffFFFFFF),),
                                              onPressed: (){}),
                                        ],
                                      ),


                                    ],
                                  ),
                                )),
                            onTap: (){

                              // viewModel.Productlist(context, viewModel.itemsimage as Image);
                              viewModel.Productlist(context, itemsname,image);
                            },
                          ),
                        );
                      },)
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Popular',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(width: 230,),
                    TextButton(onPressed: (){},
                        child: Text('View all',
                          style: TextStyle(fontSize: 10,
                              color: Color(0xff000000)),))
                  ],
                ),
                Container(
                    width: 1492,
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: viewModel.itemsname.length,
                      itemBuilder: (BuildContext context, int index) {
                        final itemsname = viewModel.itemsname[index];

                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 169,
                              height: 300,
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Stack(
                                    children: [
                                      viewModel.itemsimage[index],
                                      Positioned(
                                          right: 5,
                                          top: 5,
                                          child: CircleAvatar(
                                            backgroundColor:Color(0xffFFFFFF),
                                            child: IconButton(
                                              onPressed: () {
                                              },
                                              icon: Icon(Icons.favorite,color: Color(0xffD9D9D9)),),

                                          )),
                                      Positioned(
                                        bottom: 5,
                                        left: 5,
                                        child: Container(
                                          width: 40,
                                          height: 18,
                                          decoration: BoxDecoration(
                                              color:Color(0xffFFFFFF) ,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,color: Color(0xffF6DE0B),size: 15,),
                                                Text(viewModel.itemspoint[index],
                                                    style: TextStyle(fontSize: 10,
                                                        color: Color(0xff000000))),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                    SizedBox(height: 5,),
                                    Text(itemsname.name,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)
                                      ),),
                                    Text(itemsname.discription,
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000)
                                      ),),
                                    Row(
                                      children: [
                                        Text('Price ${itemsname.price}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000)
                                          ),),
                                        SizedBox(width: 20,),
                                        FloatingActionButton.small(
                                            backgroundColor: Color(0xff151344),
                                            shape: CircleBorder(),
                                            child: Icon(Icons.add,color: Color(0xffFFFFFF),),
                                            onPressed: (){}),
                                      ],
                                    ),


                                  ],
                                ),
                              )),
                        );
                      },)
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Recently Added',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(width: 180,),
                    TextButton(onPressed: (){},
                        child: Text('View all',
                          style: TextStyle(fontSize: 10,
                              color: Color(0xff000000)),))
                  ],
                ),
                Container(
                    width: 1492,
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: viewModel.itemsname.length,
                      itemBuilder: (BuildContext context, int index) {
                        final itemsname = viewModel.itemsname[index];

                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 169,
                              height: 300,
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Stack(
                                    children: [
                                      viewModel.itemsimage[index],
                                      Positioned(
                                          right: 5,
                                          top: 5,
                                          child: CircleAvatar(
                                            backgroundColor:Color(0xffFFFFFF),
                                            child: IconButton(
                                              onPressed: () {
                                              },
                                              icon: Icon(Icons.favorite,color: Color(0xffD9D9D9)),),

                                          )),
                                      Positioned(
                                        bottom: 5,
                                        left: 5,
                                        child: Container(
                                          width: 40,
                                          height: 18,
                                          decoration: BoxDecoration(
                                              color:Color(0xffFFFFFF) ,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,color: Color(0xffF6DE0B),size: 15,),
                                                Text(viewModel.itemspoint[index],
                                                    style: TextStyle(fontSize: 10,
                                                        color: Color(0xff000000))),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                    SizedBox(height: 5,),
                                    Text(itemsname.name,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)
                                      ),),
                                    Text(itemsname.discription,
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000)
                                      ),),
                                    Row(
                                      children: [
                                        Text('Price ${itemsname.price}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000)
                                          ),),
                                        SizedBox(width: 20,),
                                        FloatingActionButton.small(
                                            backgroundColor: Color(0xff151344),
                                            shape: CircleBorder(),
                                            child: Icon(Icons.add,color: Color(0xffFFFFFF),),
                                            onPressed: (){}),
                                      ],
                                    ),


                                  ],
                                ),
                              )),
                        );
                      },)
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Top Selling',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(width: 210,),
                    TextButton(onPressed: (){},
                        child: Text('View all',
                          style: TextStyle(fontSize: 10,
                              color: Color(0xff000000)),))
                  ],
                ),
                Container(
                    width: 1492,
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: viewModel.itemsname.length,
                      itemBuilder: (BuildContext context, int index) {
                        final itemsname = viewModel.itemsname[index];

                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 169,
                              height: 300,
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Stack(
                                    children: [
                                      viewModel.itemsimage[index],
                                      Positioned(
                                          right: 5,
                                          top: 5,
                                          child: CircleAvatar(
                                            backgroundColor:Color(0xffFFFFFF),
                                            child: IconButton(
                                              onPressed: () {
                                              },
                                              icon: Icon(Icons.favorite,color: Color(0xffD9D9D9)),),

                                          )),
                                      Positioned(
                                        bottom: 5,
                                        left: 5,
                                        child: Container(
                                          width: 40,
                                          height: 18,
                                          decoration: BoxDecoration(
                                              color:Color(0xffFFFFFF) ,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,color: Color(0xffF6DE0B),size: 15,),
                                                Text(viewModel.itemspoint[index],
                                                    style: TextStyle(fontSize: 10,
                                                        color: Color(0xff000000))),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                    SizedBox(height: 5,),
                                    Text(itemsname.name,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff000000)
                                      ),),
                                    Text(itemsname.discription,
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000)
                                      ),),
                                    Row(
                                      children: [
                                        Text('Price ${itemsname.price}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000)
                                          ),),
                                        SizedBox(width: 20,),
                                        FloatingActionButton.small(
                                            backgroundColor: Color(0xff151344),
                                            shape: CircleBorder(),
                                            child: Icon(Icons.add,color: Color(0xffFFFFFF),),
                                            onPressed: (){}),
                                      ],
                                    ),


                                  ],
                                ),
                              )),
                        );
                      },)
                ),
              ],
            ),
          ),
        ),

      ),
      viewModelBuilder: () => HomePageViewModel(),
    );
  }
}
