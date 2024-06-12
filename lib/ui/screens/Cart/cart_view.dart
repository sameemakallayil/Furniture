import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'cart_viewmodel.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewModel>.nonReactive(
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
                  Icons.favorite_border,
                  color: Color(0xff000000),
                  size: 26,
                ),
                onPressed: () {},
              ),
            ],
            title: Text(
              'Your Cart',
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, right: 20, bottom: 25),
                  child: Row(
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
                        'Cart',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff645F5F),
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
                        'Address',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff645F5F),
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
                ),
                Container(
                  width: 390,
                  height: 48,
                  decoration: BoxDecoration(color: Color(0xffE3E3E3)),
                  child: Row(
                    children: [
                      Checkbox(
                        value: viewModel.isChecked,
                        onChanged: (bool? value) {
                          // viewModel.checkboxcheck(value!);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        activeColor: Color(0xff903913),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2 Items selected ( \$ 239.00 )',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share_outlined,
                            size: 20,
                            color: Color(0xff000000),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            size: 24,
                            color: Color(0xff000000),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(children: [
                    Container(
                      width: 359,
                      height: 154,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    'assets/images/newarr2.png',
                                    width: 103,
                                    height: 103,
                                  ),
                                  Positioned(
                                    right: 60,
                                    top: 1,
                                    child: Checkbox(
                                      value: viewModel.isChecked,
                                      onChanged: (bool? value) {
                                        // viewModel.checkboxcheck(value!);
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      activeColor: Color(0xff903913),
                                    ),
                                  )
                                ]),
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
                                          fontSize: 12,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'Eames single chair',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'My art design| 29’ x 52’ wide tufted',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'eames chair - Green',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000)),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '\$ 95',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff903913)),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '\$ 110',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff8B8484),
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor:
                                                  Color(0xff686262),
                                              decorationThickness: 2),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '\$ 15 saved',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff903913)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 359,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                border: Border(
                                  top: BorderSide(
                                      color: Color(0xffA4A4A4), width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Remove',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                  VerticalDivider(
                                    color: Color(0xffA4A4A4),
                                  ),
                                  Text(
                                    'Move to favourites',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 5,
                        child: Container(
                          width: 60,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff998558)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Row(
                              children: [
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0xffFFFFFF),
                                  size: 17,
                                )
                              ],
                            ),
                          ),
                        ))
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(children: [
                    Container(
                      width: 359,
                      height: 154,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    'assets/images/newarr1.png',
                                    width: 103,
                                    height: 103,
                                  ),
                                  Positioned(
                                    right: 60,
                                    top: 1,
                                    child: Checkbox(
                                      value: viewModel.isChecked,
                                      onChanged: (bool? value) {
                                        // viewModel.checkboxcheck(value!);
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      activeColor: Color(0xff903913),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Urban Decor',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'Wood lounge sofa',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Urban decor| 4’ x 6’ Feet,2 seater|',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      'folding sofa - Blue',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000)),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '\$ 140',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff903913)),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '\$ 165',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff8B8484),
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor:
                                                  Color(0xff686262),
                                              decorationThickness: 2),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '\$ 25 saved',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff903913)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 359,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                border: Border(
                                  top: BorderSide(
                                      color: Color(0xffA4A4A4), width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Remove',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                  VerticalDivider(
                                    color: Color(0xffA4A4A4),
                                  ),
                                  Text(
                                    'Move to favourites',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 5,
                        child: Container(
                          width: 60,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff998558)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Row(
                              children: [
                                Text(
                                  'Qty: 1',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0xffFFFFFF),
                                  size: 17,
                                )
                              ],
                            ),
                          ),
                        ))
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 390,
                  height: 26,
                  decoration: BoxDecoration(color: Color(0xffE3E3E3)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 2),
                    child: Text(
                      'Coupons',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 355,
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            spreadRadius: 0),
                        BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(-1.0, -1.0),
                            blurRadius: 2.0,
                            spreadRadius: 0),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.local_offer_outlined,
                          color: Color(0xff998558),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Apply Coupon',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C6C6C),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          'Select',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff903913),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 390,
                  height: 27,
                  decoration: BoxDecoration(color: Color(0xffE3E3E3)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 2),
                    child: Text(
                      'Price Details (2 Items)',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Total MRP',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff000000)),
                          ),
                          SizedBox(
                            width: 240,
                          ),
                          Text(
                            '\$ 235.00',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff000000)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Order Savings',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff000000)),
                          ),
                          SizedBox(
                            width: 226,
                          ),
                          Text(
                            '\$ 40.00',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff084B9A)),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '\$ 197.00',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff903913)),
                              ),
                              Text(
                                'View Details',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff903913)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          SizedBox(
                            width: 222,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                viewModel.nextPage();
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'checkout',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_outlined,
                                    size: 15,
                                    color: Color(0xffFFFFFF),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff998558),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 390,
                  height: 26,
                  decoration: BoxDecoration(color: Color(0xffE3E3E3)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 2),
                    child: Text(
                      'Return/Refund policy',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'In case of return, we ensure quick refunds. Full amount will be \nrefunded excluding Shipping Fee',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Read Policy',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height: 105,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      top: BorderSide(color: Color(0xffD9D9D9), width: 3),
                      bottom: BorderSide(color: Color(0xffD9D9D9), width: 3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 1.0, right: 5),
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
                            Text(
                              'Free Delivery',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff000000)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 1.0, right: 7),
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
                            Text(
                              '15 Days\nReplacement',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff000000)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 1.0, right: 6),
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
                            Text(
                              '1 year\nwarranty',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff000000)),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,)
              ],
            ),
          )),
      viewModelBuilder: () => CartViewModel(),
    );
  }
}
