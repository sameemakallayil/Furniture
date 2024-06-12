import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class LoginViewModel extends BaseViewModel {
 final formKey = GlobalKey<FormState>();
 final textFieldFocusNode = FocusNode();
 bool obscured = false;

 void toggleObscured() {

   obscured = !obscured;
   if (textFieldFocusNode.hasPrimaryFocus)
    return; // If focus is on text field, dont unfocus
   textFieldFocusNode.canRequestFocus =
   false; // Prevents focus if tap on eye
 notifyListeners();
 }


// GlobalKey get formkey => _formKey;

 TextEditingController _emailontroller = TextEditingController();

 TextEditingController get emailcontroller => _emailontroller;

 TextEditingController _Passwordontroller = TextEditingController();

 TextEditingController get passwordcontroller => _Passwordontroller;





  emailvalidation(value) {
  String patternemail =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regexpemail = RegExp(patternemail);
  notifyListeners();

  if (!regexpemail.hasMatch(value!)) {
   return 'Please enter a valid email';
  }
  return null;
 }

  passwordvalidation(value) {
  String patternpassword =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regexpassword = RegExp(patternpassword);
  notifyListeners();

  if (!regexpassword.hasMatch(value!)) {
   return 'Enter valid password';
  } else {
   return null;
  }
 }


 Future<void> login(BuildContext context) async{
  if (formKey.currentState!.validate()) {
   navigationService.navigateTo(Routes.dashboardView);

  }
 }

 void signup() {
   navigationService.navigateTo(Routes.signupView);


 }
}


