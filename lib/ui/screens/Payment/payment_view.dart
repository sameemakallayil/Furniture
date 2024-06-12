import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Payment/payment_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentViewModel>.nonReactive(
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
            'Payment Method',
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
                padding: const EdgeInsets.fromLTRB(20,10,20,10),
                child: Column(

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
                          radius: 3,
                          backgroundColor: Color(0xff00B272),
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
                    SizedBox(height: 20,),
                    Container(
                      width: 356,
                      height: 304,
                      decoration: BoxDecoration(
                        color:Color(0xffFFFFFF) ,

                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xff000000)),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Your Payment Method',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                            SizedBox(height: 5,),

                            Row(
                              children: [
                                Container(
                                  width: 22.4,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Color(0xffFFFFFF) ,

                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xff333333)),

                                  ),
                                  child: Icon(Icons.money,color: Color(0xff00B272),size: 12,),
                                ),
                                SizedBox(width: 5,),

                                Text(
                                  'Cash on delivery (cash/UPI)',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(width: 155,),
                                Icon(Icons.circle_outlined,color: Color(0xff000000),size: 15,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                            SizedBox(height: 5,),

                            Row(
                              children: [
                                Container(
                                  width: 22.4,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Color(0xffFFFFFF) ,

                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xff333333)),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4.0,top: 3),
                                    child: Text(
                                      'UPI',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Text(
                                  'PhonePe/Google Pay/UPI',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(width: 160,),
                                Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff903913),size: 20,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                            SizedBox(height: 5,),

                            Row(
                              children: [
                                Container(
                                  width: 22.4,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Color(0xffFFFFFF) ,

                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xff333333)),

                                  ),
                                  child: Icon(Icons.credit_card_outlined,color: Color(0xff000000),size: 12,),
                                ),
                                SizedBox(width: 5,),

                                Text(
                                  'Credit/Debit card',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(width: 200,),
                                Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff903913),size: 20,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                            SizedBox(height: 5,),

                            Row(
                              children: [
                                Container(
                                  width: 22.4,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Color(0xffFFFFFF) ,

                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xff333333)),

                                  ),
                                  child: Icon(Icons.wallet_outlined,color: Color(0xff000000),size: 12,),
                                ),
                                SizedBox(width: 5,),

                                Text(
                                  'Wallets',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(width: 245,),
                                Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff903913),size: 20,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                            SizedBox(height: 5,),

                            Row(
                              children: [
                                Container(
                                  width: 22.4,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color:Color(0xffFFFFFF) ,

                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xff333333)),

                                  ),
                                  child: Icon(Icons.food_bank_outlined,color: Color(0xff000000),size: 12,),
                                ),
                                SizedBox(width: 5,),

                                Text(
                                  'Net Banking',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(width: 224,),
                                Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff903913),size: 20,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 356,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10),
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
                        padding: const EdgeInsets.fromLTRB(20,10,20,10),
                        child: Row(
                          children: [
                            Icon(Icons.card_giftcard_outlined,color: Color(0xff000000),size: 20,),
                            SizedBox(width: 10,),

                            Text(
                              'Have a Gift Card?',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(width: 170,),
                            Text(
                              'Apply',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff903913),
                                fontWeight: FontWeight.bold
                              ),
                            ),                      ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      width: 356,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10),
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
                        padding: const EdgeInsets.fromLTRB(20,10,20,10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price Details (1 product)',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700
                              ),
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
                                SizedBox(width: 210,),
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
                                SizedBox(width: 210,),
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
                                SizedBox(width: 147,),
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
                                SizedBox(width: 152,),
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
                            Divider(
                              color: Color(0xffC9C9C9),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [

                                Text(
                                  'Total Amount',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w700
                                  ),
                                ),

                                SizedBox(width: 175,),
                                Text(
                                  '\$ 82.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff000000),
                                      fontWeight: FontWeight.w700

                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),


                  ],
                ),
              ),
              Container(
                width: 390,
                height: 85,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  border: Border(
                    top: BorderSide(color: Color(0xffD9D9D9), width: 3),
                    bottom: BorderSide(color: Color(0xffD9D9D9), width: 3),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,20),
                  child: Row(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$ 82.00',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w700
                            ),
                          ),

                          Text(
                            'View Details',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff903913),
                                fontWeight: FontWeight.w500

                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 130,),
                      SizedBox(
                        width: 148,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {
                            viewModel.success();
                            // viewModel.failure();
                          },

                             child:  Text(
                                'Pay Now',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),

                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff998558),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),

            ],
          ),

        ),

      ),
      viewModelBuilder: () => PaymentViewModel(),
    );
  }
}
