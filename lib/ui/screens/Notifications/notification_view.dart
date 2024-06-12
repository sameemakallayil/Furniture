import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'notification_viewmodel.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.nonReactive(
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

          title: Text('Notification',
            style: TextStyle(fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500),),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Color(0xffFFFFFF),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(
            children: [
              Table(
                border: TableBorder.all(
                  color: Color(0xff998558),
                  borderRadius: BorderRadius.circular(5)
                ),
                columnWidths: const <int, TableColumnWidth>{
                  2: FixedColumnWidth(178),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    children:<Widget> [
                      Container(
                        height: 30,
                          alignment: Alignment.center,
                          child: Text('ALL',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff151344)
                          ),),
                        decoration: BoxDecoration(
                            color: Color(0xffBCB39F),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                topLeft: Radius.circular(5))

                        ),
                      ),
                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                            height: 30,
                            alignment: Alignment.center,
                            child: Text('Order Updates',
                                style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7F7F7F)
                            ),)),
                      )
                    ]
                  )
                ],

              ),
              SizedBox(height: 40,),
              Stack(
                children:[
                  Container(
                    width: 357,
                    height: 100,
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
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 15,
                          decoration: BoxDecoration(
                              color: Color(0xff998558),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10))

                          ),
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Order Confirmed',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000)
                                ),),
                              SizedBox(height: 5,),
                              Text("Your order 12345678910 has been confirmed and is expected to\nbe delivered around 10/12/2023. Our team will start processing\nyour order soon and keep on updating you with the progress",
                                style: TextStyle(fontSize: 10,
                                    color: Color(0xff6D6D6D)),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                      top: 10,
                      child: Container(
                    width: 40,
                    height: 17,
                    color: Color(0xffA08C62),
                    child: Text('NEW',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xffFFFFFF),
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ))
                ] 
              ),
              SizedBox(height: 20,),
              Stack(
                  children:[
                    Container(
                      width: 357,
                      height: 100,
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
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Color(0xff998558),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))

                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Get 10% off on armchairs and coffee tables',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000)
                                  ),),
                                SizedBox(height: 5,),
                                Text("Make your living room come alive with our special offer.",
                                  style: TextStyle(fontSize: 10,
                                      color: Color(0xff6D6D6D)),),
                                Padding(
                                  padding: const EdgeInsets.only(left:100,top: 5),
                                  child: OutlinedButton(onPressed: (){},
                                      child: Text('SHOP NOW',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500
                                      ),),
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    side: BorderSide( color: Color(0x40000000),
                                    ),
                                  ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        right: 0,
                        top: 10,
                        child: Container(
                          width: 40,
                          height: 17,
                          color: Color(0xffA08C62),
                          child: Text('NEW',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffFFFFFF),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Positioned(
                      right:5,
                        bottom: 5,
                        child: Text('5 days ago, 11:28 am',
                        style: TextStyle(fontSize: 8,
                        color: Color(0xff000000)),))
                  ]
              ),
              SizedBox(height: 20,),
              Stack(
                  children:[
                    Container(
                      width: 357,
                      height: 110,
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
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Color(0xff998558),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))

                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New lower price',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000)
                                  ),),
                                SizedBox(height: 5,),
                                Text("Our popular products are reduced prices just for you. Get 10%\ninstant discount* on American Express Cards.",
                                  style: TextStyle(fontSize: 10,
                                      color: Color(0xff6D6D6D)),),
                                Padding(
                                  padding: const EdgeInsets.only(left:100,top: 5),
                                  child: OutlinedButton(onPressed: (){},
                                    child: Text('SHOP NOW',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500
                                      ),),
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      side: BorderSide( color: Color(0x40000000),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Positioned(
                        right:5,
                        bottom: 5,
                        child: Text('6 days ago, 10:00 am',
                          style: TextStyle(fontSize: 8,
                              color: Color(0xff000000)),))
                  ]
              )
            ],
          ),
        ),

      ),
      viewModelBuilder: () => NotificationViewModel(),
    );
  }
}
