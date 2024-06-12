import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrderTrackingViewModel extends BaseViewModel {
  // int current_step = 5;
  //
  // List<Step> steps = [
  //   Step(
  //     title: Text('Confirmed',style: TextStyle(
  //       color: Color(0xff000000),fontWeight: FontWeight.bold
  //     ),),
  //     subtitle: Align(
  //       alignment: Alignment.topCenter,
  //       child: Text('28 Nov, 2023'),
  //
  //     ),
  //     isActive: true,
  //     stepStyle: StepStyle(
  //         color: Color(0xff00B272),
  //       connectorColor: Color(0xff00B272),
  //
  //     ),
  //       content: Text('')
  //   ),
  //   Step(
  //     title: Text('Packed'),
  //     content: Text('World!'),
  //     isActive: true,
  //       stepStyle: StepStyle(
  //         color: Color(0xff00B272),
  //         connectorColor: Color(0xff00B272),
  //
  //       )
  //   ),
  //   Step(
  //     title: Text('Shipped'),
  //     content: Text('Hello World!'),
  //     state: StepState.complete,
  //     isActive: true,
  //       stepStyle: StepStyle(
  //         color: Color(0xff00B272),
  //         connectorColor: Color(0xff00B272),
  //
  //       )
  //   ),
  //   Step(
  //     title: Text('Out for Delivery'),
  //     content: Text('Hello World!'),
  //     state: StepState.complete,
  //     isActive: false,
  //       stepStyle: StepStyle(
  //         color: Color(0xff8F8F8F),
  //         connectorColor: Color(0xff8F8F8F),
  //
  //       )
  //   ),
  //   Step(
  //     title: Text('Delivery by 05 Dec, 2023'),
  //     content: Text('Hello World!'),
  //     state: StepState.complete,
  //     isActive: false,
  //       stepStyle: StepStyle(
  //         color: Color(0xff8F8F8F),
  //         connectorColor: Color(0xff8F8F8F),
  //
  //       )
  //   ),
  // ];

  void updateTitle() {
    notifyListeners();
  }

  void nextPage() {
    // navigationService.navigateTo(Routes.aboutView);
  }
}
