import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'address_viewmodel.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddressViewModel>.nonReactive(
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

          title: Text(
            'Address',
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20,10,20,10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.zero,
                            color: Color(0xff00B272)),
                        height: 1,
                      ),
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xff00B272),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff00B272),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.zero,
                            color: Color(0xff00B272)),
                        height: 1,
                      ),
                    ),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xff00B272),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Color(0xff686262),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff00B272),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.zero,
                            color: Color(0xffA7A0A0)),
                        height: 1,
                      ),
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xffA7A0A0),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff645F5F),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                    SizedBox(
            width: 357,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.add,
                    size: 10,
                    color: Color(0xffFFFFFF),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add New Address',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                    ),
                  ),


                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff998558),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
                    ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Select Delivery Address',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 356,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,15,10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            Icon(Icons.home_outlined,size: 15,color: Color(0xff000000),),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(width: 258,),
                            Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff903913),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Anjali M',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'Floral House, 123 NW Bobcat Lane',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'St. Robert, MO 645637',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'Mobile : 9876543890',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 356,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,15,10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            Icon(Icons.work_outline,size: 15,color: Color(0xff000000),),
                            Text(
                              'Work',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(width: 260,),
                            Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff903913),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Anjali M',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'Floral House, 123 NW Bobcat Lane',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'St. Robert, MO 645637',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'Mobile : 9876543890',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                SizedBox(
                  width: 357,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.nextPage();
                    },

                   child:Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff998558),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),

              ],
            ),
          ),
      ),
      ),
      viewModelBuilder: () => AddressViewModel(),
    );
  }
}
