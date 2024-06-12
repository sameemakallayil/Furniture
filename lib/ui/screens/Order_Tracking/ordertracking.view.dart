import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ordertracking_viewmodel.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderTrackingViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(

          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: SizedBox(
                width: 24,
                height: 24,

                child: OutlinedButton(
                  onPressed: () {},
                  child: Icon(Icons.headset_mic_outlined,
                    size: 16,
                    color: Color(0xff000000),),
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.only(left: 1),
                    backgroundColor: Color(0xffFFFFFF),
                    side: BorderSide(
                      color:  Color(0x40000000),
                    )

                  ),
                ),
              ),
            ),
          ],

          title: Text('Order Tracking',
            style: TextStyle(fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500),),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFFFFFF),
        ),
        body: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 390,
                height: 160,
                decoration: BoxDecoration(
                    color: Color(0xffE9E9E9),

                    border: Border(
                      bottom: BorderSide(
                          color: Color(0xffD9D9D9),
                          width: 3
                      ),

                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: 357,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
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
                      padding: const EdgeInsets.fromLTRB(15,10,15,10),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/newarr2.png',
                                width: 105,
                                height: 105,
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
                                  Text(
                                    '\$ 95.00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff903913)),
                                  ),
                                  Text(
                                    'You saved \$ 15.00',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff000000)),
                                  ),

                                ],
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,15,20,0),
                    child: Row(
                      children: [

                        CircleAvatar(
                          backgroundColor: Color(0xff00B272),
                          radius: 8,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Confirmed',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '28 Nov, 2023',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff636363)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:27),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          color: Color(0xff00B272)),
                      height: 40,
                      width: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                    child: Row(
                      children: [

                        CircleAvatar(
                          backgroundColor: Color(0xff00B272),
                          radius: 8,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Packed',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:27),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          color: Color(0xff00B272)),
                      height: 40,
                      width: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                    child: Row(
                      children: [

                        CircleAvatar(
                          backgroundColor: Color(0xff00B272),
                          radius: 8,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Shipped',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:27),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          color: Color(0xff8F8F8F)),
                      height: 40,
                      width: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                    child: Row(
                      children: [

                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xff000000),

                          child: CircleAvatar(
                            backgroundColor: Color(0xffFFFFFF),
                            radius: 7,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Out for Delivery',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff636363)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:27),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          color: Color(0xff8F8F8F)),
                      height: 40,
                      width: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                    child: Row(
                      children: [

                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xff000000),

                          child: CircleAvatar(
                            backgroundColor: Color(0xffFFFFFF),
                            radius: 7,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Delivery by 05 Dec, 2023',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff636363)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 171,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {

                            },

                            child:  Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 30)),
                                Icon(Icons.cancel_outlined,size: 18,color: Color(0xffFFFFFF),),
                                SizedBox(width: 5,),
                                Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ],
                            ),

                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff998558),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                          ),
                        ),
                        SizedBox(width: 15,),
                        SizedBox(
                          width: 171,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {

                            },

                            child:  Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 30)),
                                Icon(Icons.arrow_forward_outlined,size: 18,color: Color(0xffFFFFFF),),
                                SizedBox(width: 5,),
                                Text(
                                  'Track',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,

                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ],
                            ),

                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff998558),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 390,
                    height: 15,
                    color: Color(0xffE9E9E9),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Address',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,

                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'Anjali M',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'Floral House, 123 NW Bobcat Lane\nSt. Robert, MO 645637',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Phone: 9876543890',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff000000),
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
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Order Payment Details',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        SizedBox(width: 140,),

                        Text(
                          'Download Invoice',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff084B9A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),

                    Row(
                      children: [

                        Text(
                          'Order Amount',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 250,),
                        Text(
                          '\$ 95.00',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      children: [

                        Text(
                          'Order Savings',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 250,),
                        Text(
                          '\$ 15.00',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff084B9A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      children: [

                        Text(
                          'Platform Fee',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 20,),

                        Text(
                          'Know More',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff903913),
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 187,),
                        Text(
                          '\$ 2.00',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      children: [

                        Text(
                          'Shipping Fee',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 20,),

                        Text(
                          'Know More',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff903913),
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 192,),
                        Text(
                          'FREE',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff084B9A),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: 5,),
                    Row(
                      children: [

                        Text(
                          'Total Amount',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700
                          ),
                        ),

                        SizedBox(width: 250,),
                        Text(
                          '\$ 82.00',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700

                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                width: 390,
                height: 5,
                color: Color(0xffE9E9E9),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Column(
                  children: [
                    Text(
                      ' Payment Mode',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500

                      ),
                    ),
                    Row(
                      children: [

                        Text(
                          'Cash on delivery',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 235,),
                        Text(
                          '\$ 82.00',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 390,
                height: 5,
                color: Color(0xffE9E9E9),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),

      ),
      viewModelBuilder: () => OrderTrackingViewModel(),
    );
  }
}
