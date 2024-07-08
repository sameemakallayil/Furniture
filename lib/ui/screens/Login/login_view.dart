import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnitureproject/constants/fonts.gen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> _handleSignIn() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult =
      await _auth.signInWithCredential(credential);
      final User? user = authResult.user;
      return user;
    } catch (error) {
      print("Error during Google sign-in: $error");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      builder: (context, viewModel, child) =>
          Scaffold(body: SingleChildScrollView(
        child: Consumer<LoginViewModel>(
          builder: (BuildContext context, value, Widget? child) {
            return Form(
              key: viewModel.formKey,
              child: Column(
                children: [
                  FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                      child: Image.asset('assets/images/login.png',
                          height: 500, width: 550)),
                  Text(
                    'Login',
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Enter your Email and Password',
                              style: TextStyle(
                                color: Color(0xff686262),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                              labelText: ('Email ID'),
                              labelStyle: TextStyle(
                                  color: Color(0xff6D6D6D), fontSize: 15),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                // add padding to adjust icon
                                child: Icon(
                                  Icons.account_circle_outlined,
                                  color: Color(0xffA08C62),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Color(0xffA08C62),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Color(0xffA08C62),
                                  width: 2.0,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Color(0xffA08C62),
                                  width: 2.0,
                                ),
                              ),
                            ),
                            style: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontWeight: FontWeight.bold),
                            controller: viewModel.emailcontroller,
                            validator: (value) {
                              return viewModel.emailvalidation(
                                  viewModel.emailcontroller.text);
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelText: ('Password'),
                              labelStyle: TextStyle(
                                  color: Color(0xff6D6D6D), fontSize: 15),
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
                                    color: Color(0xff903913),
                                  ),
                                ),
                                ),
                              ),
                              //
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Color(0xffA08C62),
                                  width: 2.0,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Color(0xffA08C62),
                                  width: 2.0,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Color(0xffA08C62),
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
                            ),
                            style: TextStyle(
                                color: Color(0xff6D6D6D),
                                fontWeight: FontWeight.bold),
                            controller: viewModel.passwordcontroller,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: viewModel.obscured,
                            focusNode: viewModel.textFieldFocusNode,
                            validator: (value) {
                              return viewModel.passwordvalidation(value ?? '');
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Color(0xff716D6D),
                                textStyle: TextStyle(
                                  height: 1.2,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text('Forgot Password?'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 185,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              viewModel.login(context);
                            },
                            child: Text(
                              'LOG IN',
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
                        Text(
                          'Or Connect using ',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff716D6D),
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 48,
                              width: 80.35,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1),
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(-1.0, -1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1),
                                  ]),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/fb.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                            Container(
                              height: 48,
                              width: 80.35,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1),
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(-1.0, -1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1),
                                  ]),
                              child: IconButton(
                                onPressed: () async {
                                  User? user = await _handleSignIn();
                                  print('dataaaaaaaaaaaaaa${user!.displayName.toString()}');
                                  if (user != null) {
                                    // viewModel.googlelogin(context,user);
                                    // viewModel.navigateToUserDetails(user);

                                  }
                                },
                                icon: Image.asset(
                                  'assets/images/google.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                            Container(
                              height: 48,
                              width: 80.35,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1),
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(-1.0, -1.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1),
                                  ]),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/apple.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
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
                                viewModel.signup();
                              },
                              child: const Text('Sign Up'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
