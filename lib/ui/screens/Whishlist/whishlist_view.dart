import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Whishlist/whishlist_viewmodel.dart';
import 'package:stacked/stacked.dart';

class WhishlistView extends StatelessWidget {
  const WhishlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WhishlistViewModel>.nonReactive(
      builder: (context, viewModel, child) =>
          Scaffold(
              appBar: AppBar(
                leadingWidth: 35,
                leading: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {},
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
                    icon: Icon(Icons.shopping_cart_outlined,
                      color: Color(0xff000000),
                      size: 28,),
                    onPressed: () {},
                  ),
                ],
                title: Text('Wishlist',
                  style: TextStyle(fontSize: 18,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500),),
                centerTitle: true,
                toolbarHeight: 80,
                backgroundColor: Color(0xffFFFFFF),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 5),
                    child: Text("8 Products",
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.w500),),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5,bottom: 5),
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 30.0,
                        childAspectRatio: 0.82,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: List.generate(viewModel.itemsimage.length, (index) {
                          return Stack(
                            children:[Container(
                                width: 169,
                                height: 300,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),

                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 0
                                    ),
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          offset: Offset(-1.0, -1.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 0
                                      ),
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Stack(

                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                                          child: viewModel.itemsimage[index],
                                        ),
                                        Positioned(
                                            right: 15,
                                            top: 10,
                                            child: Container(
                                              width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffA08C62),

                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                onPressed: () {},
                                                icon: Icon(Icons.close,
                                                    color: Color(0xffFFFFFF),
                                                size: 15,),

                                              ),


                                            ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 15,
                                          child: Container(
                                            width: 40,
                                            height: 18,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFFFFFF),
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.star, color: Color(0xffF6DE0B),
                                                    size: 15,),
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
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text(viewModel.itemsname[index]['discription'],
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff000000)
                                          ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text(viewModel.itemsname[index]['name'],
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000000)
                                          ),),
                                      ),



                                      SizedBox(height: 10,),
                                      Expanded(
                                        child: Container(
                                          width: 198,
                                          height: 20,

                                          decoration: BoxDecoration(
                                              color: Color(0xffA08C62),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10))

                                          ),
                                          child: Row(

                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              TextButton(onPressed: (){},
                                                  child: Text('Move to cart',
                                                  style: TextStyle(fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffFFFFFF)),)),
                                              SizedBox(width:1,),
                                              Icon(Icons.shopping_cart_outlined,
                                              color: Color(0xffFFFFFF),)
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),

                                ),
                            ),
                              Positioned(
                                right: 30,
                                bottom: 50,
                                child: Text(viewModel.itemsname[index]['price'],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff903913)
                                ),),)
                            ]
                          );

                        }),

                      ),
                    ),
                  ),
                ],
              )
            //
            // ],
            //   ),
            // ),
            // ),

          ),
      viewModelBuilder: () => WhishlistViewModel(),
    );
  }
}
