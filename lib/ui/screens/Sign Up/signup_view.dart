import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Sign%20Up/signup_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import '../home/home_viewmodel.dart';

class SignupView extends StatelessWidget {
   SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
          body: SingleChildScrollView(
        child: Consumer<SignupViewModel>(
          builder: (context, userModel, child) {
            return Form(
              key: viewModel.formKey,
              child: Column(
                children: [
                  FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                      child: Image.asset('assets/images/signup.png',
                          height: 500, width: 550)),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
                    child: Column(children: [
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: ('Full Name'),
                            labelStyle:
                            TextStyle(color: Color(0xff6D6D6D), fontSize: 15),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              // add padding to adjust icon
                              child: Icon(
                                Icons.person,
                                color: Color(0xffA08C62),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                          ),
                          style: TextStyle(
                              color: Color(0xff6D6D6D),
                              fontWeight: FontWeight.bold),
                          controller: viewModel.nameontroller,
                          validator: (value) {
                            return viewModel.namevalidation(viewModel.nameontroller.text);
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: ('Email ID'),
                            labelStyle:
                            TextStyle(color: Color(0xff6D6D6D), fontSize: 15),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              // add padding to adjust icon
                              child: Icon(
                                Icons.account_circle_outlined,
                                color: Color(0xffA08C62),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                          ),
                          style: TextStyle(
                              color: Color(0xff6D6D6D),
                              fontWeight: FontWeight.bold),
                          controller: viewModel.emailontroller,
                          validator: (value) {
                            return viewModel.emailvalidation(viewModel.emailontroller.text);
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: ('Password'),
                            labelStyle:
                            TextStyle(color: Color(0xff6D6D6D), fontSize: 15),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              // add padding to adjust icon
                              child: Icon(
                                Icons.lock_outlined,
                                color: Color(0xffA08C62),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: GestureDetector(
                                child: IconButton(

                                  color: Color(0xff903913),
                                  onPressed: () {
                                    viewModel.toggleObscured();
                                  },
                                  icon: Icon(
                                    viewModel.obscured
                                        ? Icons.visibility_rounded
                                        : Icons.visibility_off_rounded,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                          ),
                          style: TextStyle(
                              color: Color(0xff6D6D6D),
                              fontWeight: FontWeight.bold),
                          controller: viewModel.passwordontroller,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: viewModel.obscured,
                          // focusNode:viewModel.textFieldFocusNode,
                          validator: (value) {
                            return viewModel.passwordvalidation(
                                value ?? '');
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: ('Confirm Password'),
                            labelStyle:
                            TextStyle(color: Color(0xff6D6D6D), fontSize: 15),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              // add padding to adjust icon
                              child: Icon(
                                Icons.lock_outlined,
                                color: Color(0xffA08C62),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: GestureDetector(
                                child: IconButton(

                                  color: Color(0xff903913),
                                  onPressed: () {
                                    viewModel.ctoggleObscured();
                                  },
                                  icon: Icon(
                                    viewModel.cobscured
                                        ? Icons.visibility_rounded
                                        : Icons.visibility_off_rounded,
                                    size: 24,
                                    color: Color(0xff903913),
                                  ),
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Color(0xffA08C62),
                                width: 2.0,
                              ),
                            ),
                          ),
                          style: TextStyle(
                              color: Color(0xff6D6D6D),
                              fontWeight: FontWeight.bold),
                          controller: viewModel.cpasswordontroller,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: viewModel.cobscured,
                          // focusNode: viewModel.textFieldFocusNode,
                          validator: (value) {
                            return viewModel.cpasswordvalidation(
                                value ?? '');
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: viewModel.isChecked,
                            onChanged: (bool? value) {
                              viewModel.checkboxcheck(value!);
                            },
                            side: BorderSide(
                              color: Color(0xff1375E8),
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: 'I accepted the ',
                              style:
                              TextStyle(fontSize: 12, color: Color(0xff000000)),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Privacy policy',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff1B78E6),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                                TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff000000)),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Terms',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff1B78E6),
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              // code to open / launch privacy policy link here
                                            })
                                    ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 185,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {

                            viewModel.nextPage();

                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffA08C62),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fixedSize: Size(400, 50),
                              alignment: Alignment.center),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.normal),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Color(0xff4A43B7),
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {

                              viewModel.login();
                            },
                            child: const Text('Log in'),
                          ),

                        ],
                      ),
                    ]),
                  )
                ],
              ),
            );
          },)

      )),
      viewModelBuilder: () => SignupViewModel(),
    );
  }
}
