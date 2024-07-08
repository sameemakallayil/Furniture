import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class SignupViewModel extends BaseViewModel {
   final formKey = GlobalKey<FormState>();

  // GlobalKey get formkey => _formKey;

  TextEditingController emailontroller = TextEditingController();

  TextEditingController nameontroller = TextEditingController();

  TextEditingController passwordontroller = TextEditingController();

  TextEditingController cpasswordontroller = TextEditingController();
   bool isChecked = false;

   final textFieldFocusNode = FocusNode();
   bool obscured = true;
   bool cobscured = true;

   void toggleObscured() {

       obscured = !obscured;
       notifyListeners();

   }
   void ctoggleObscured() {

     cobscured = !cobscured;
     notifyListeners();

   }


  void checkboxcheck(bool value){
      isChecked = value;
      notifyListeners();

  }



  namevalidation(value){
    notifyListeners();

    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;

  }

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

  cpasswordvalidation(value){

    if (value != passwordontroller.text) {
      return 'password doesnot match';
    } else {
      return null;
    }
  }


  void nextPage(){
    if (formKey.currentState!.validate()) {
      navigationService.navigateTo(Routes.loginView);
    }
  }

  void login() {
    navigationService.navigateTo(Routes.loginView);


  }
}
