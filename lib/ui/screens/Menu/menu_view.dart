import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menu_viewmodel.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(

          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: SizedBox(
                width: 24,
                height: 24,

                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.close,
                    size: 18,
                    color: Color(0xffFFFFFF),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.only(left: 1),
                    backgroundColor: Color(0xff998558),
                  ),
                ),
              ),
            ),
          ],

          title: Text('Menu',
            style: TextStyle(fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500),),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFFFFFF),
        ),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 42,
                backgroundColor: Color(0xff903913),
                child: CircleAvatar(

                  child: Text('AM',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff903913)
                    ),),
                  backgroundColor: Color(0xffFFFFFF),
                  radius: 26,
                ),
              ),
              title: Text('Anjali M',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)
                ),),
              subtitle: Text('Welcome to Furnie',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff000000)
                ),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Column(
                children: [

                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.fact_check_outlined,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('My orders',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 197,),
                          IconButton(onPressed: (){
                            viewModel.myorder();
                          },
                              icon: Icon(Icons.navigate_next))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.account_circle_outlined,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('My Profile',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 196,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('Wishlist',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 207,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.notifications_none,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('Notifications',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 184,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.star_border_outlined,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('Rate my app',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 186,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.headphones_outlined,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('Customer Service',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 161,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 335,
                    height: 45,
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
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Icon(Icons.settings_outlined,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('Settings',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 205,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 150.0,right: 150),
              child: SizedBox(
                width: 107,
                height: 35,
                child: ElevatedButton(onPressed: (){},
                  child: Text('Logout',
                    style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF)
                    ),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Color(0xffA08C62),
                  ),
                ),
              ),
            )
          ],
        )

      ),
      viewModelBuilder: () => MenuViewModel(),
    );
  }
}
