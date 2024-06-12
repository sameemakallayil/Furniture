import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Success/success_viewmodel.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';


class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SuccessViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15,20,15,20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:100,),
              Center(
                child: Lottie.network('https://lottie.host/57b6c20e-b004-4216-a60e-5635a05bbd75/pqYjd5cfzS.json',
                    height: 200.0,
                    repeat: true,
                    reverse: true,
                    animate: true
                ),
              ),
              SizedBox(height: 10,),
              Text('Your order is confirmed',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 5,),
              Text('Thank You so much for your order.',
                style: TextStyle(
                  fontSize: 16,
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
                    'Track Order',
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
      viewModelBuilder: () => SuccessViewModel(),
    );
  }
}
