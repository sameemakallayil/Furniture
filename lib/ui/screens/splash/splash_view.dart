import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitureproject/gen/assets.gen.dart';
import 'package:stacked/stacked.dart';


import '../../tools/screen_size.dart';
import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onViewModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            width: ScreenSize.width,
            height: ScreenSize.height,
            alignment: Alignment.center,
            color:Color(0xff773A3A),
            child: Image.asset('assets/images/img.png',height: 122.23,width: 124.92,
            ),
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
