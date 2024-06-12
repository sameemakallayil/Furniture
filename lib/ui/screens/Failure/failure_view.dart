import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

import 'failure_viewmodel.dart';


class FailureView extends StatelessWidget {
  const FailureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FailureViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15,20,15,20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:100,),
              Center(
                child: Lottie.network('https://lottie.host/2112d83e-03c0-481f-ba3a-71e31bff929b/hQqGn1M0z7.json',
                    height: 200.0,
                    repeat: true,
                    reverse: true,
                    animate: true
                ),
              ),
              SizedBox(height: 10,),
              Text('Your order has failed!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 20,),
              Text('Your order can’t be completed',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff636363),
                ),
              ),
              SizedBox(height: 5,),
              Text('Please check your internet connection !',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff636363),
                ),
              ),
              SizedBox(height: 150,),
              SizedBox(
                width: 357,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // viewModel.nextPage();
                  },

                  child:  Text(
                    'Try again',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                    ),
                  ),

                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff998558),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                  width: 357,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {
                      viewModel.homepage();
                    },

                    child:  Text(
                      'Back to home',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffA08C62),
                      ),
                    ),

                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: BorderSide(color: Color(0xff903913)),

                    ),
                  )
              )

            ],

          ),
        ),


      ),
      viewModelBuilder: () => FailureViewModel(),
    );
  }
}
