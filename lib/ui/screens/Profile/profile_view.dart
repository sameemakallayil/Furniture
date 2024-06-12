
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
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

          title: Text('Profile',
            style: TextStyle(fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500),),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFFFFFF),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  trailing: Icon(Icons.edit_note),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Container(
                    width: 358,
                    height: 104,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff998558)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('Unlock Exclusive Benfits',
                        style: TextStyle(fontSize: 12,
                        color: Color(0xffFFFFFF)),),
                        SizedBox(height: 5,),
                        Text('Furnie member’s club',
                        style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF)),),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 24,
                          child: FilledButton(onPressed: (){},
                              child: Text('Join Now',
                              style: TextStyle(fontSize: 12,
                              color: Color(0xff903913)),),
                            style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              backgroundColor: Color(0xffFFFFFF),
                            ),

                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 170,
                        height: 40,
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
                              SizedBox(width: 32,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 170,
                        height: 40,
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
                              Icon(Icons.fire_truck_outlined,
                                color: Color(0xff000000),
                              ),
                              SizedBox(width: 10,),
                              Text('Returns',style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500
                              ),),
                              SizedBox(width: 32,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My Account",
                      style: TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xff903913)),),
                      Divider(
                          color: Colors.black
                      ),
                      SizedBox(height: 15,),
                      Container(
                        width: 358,
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


                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 358,
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
                              Icon(Icons.content_paste_search_outlined,
                                color: Color(0xff000000),
                              ),
                              SizedBox(width: 10,),
                              Text('My Reviews',style: TextStyle(
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
                        width: 358,
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
                              SizedBox(width: 214,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 358,
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
                              SizedBox(width: 222,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      Text("Help Center",
                        style: TextStyle(fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff903913)),),
                      Divider(
                          color: Colors.black
                      ),
                      SizedBox(height: 15,),
                      Container(
                        width: 358,
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
                              SizedBox(width: 179,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 358,
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
                              Icon(Icons.policy_outlined,
                                color: Color(0xff000000),
                              ),
                              SizedBox(width: 10,),
                              Text('Return Policy',style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500
                              ),),
                              SizedBox(width: 200,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))

                            ],
                          ),
                        ),
                      ),
                  SizedBox(height: 20,),
                  Container(
                    width: 358,
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
                          Icon(Icons.more_horiz_outlined,
                            color: Color(0xff000000),
                          ),
                          SizedBox(width: 10,),
                          Text('More',style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 238,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.navigate_next))

                        ],
                      ),
                    ),
                  ),

                      SizedBox(height: 20,),

                      Text("Feedback & information",
                        style: TextStyle(fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff903913)),),
                      Divider(
                          color: Colors.black
                      ),
                      SizedBox(height: 15,),
                      Container(
                        width: 358,
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
                              Icon(Icons.edit_note,
                                color: Color(0xff000000),
                              ),
                              SizedBox(width: 10,),
                              Text('Terms, Policies and Licences',style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500
                              ),),
                              SizedBox(width: 125,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 358,
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
                              Icon(Icons.question_mark_outlined,
                                color: Color(0xff000000),
                              ),
                              SizedBox(width: 10,),
                              Text('Browse FAQs',style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500
                              ),),
                              SizedBox(width: 200,),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.navigate_next))

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0,right: 150),
                  child: SizedBox(
                    width: 138,
                    height: 45,
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
            ),
          ),
        ),

      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
