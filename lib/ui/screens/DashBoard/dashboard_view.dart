import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body:PageView(
          controller: viewModel.pageController,
          children: viewModel.screens,
          onPageChanged: viewModel.onChanged,
          physics: NeverScrollableScrollPhysics(),
        ),

        bottomNavigationBar: NavigationBar(
          onDestinationSelected:
            viewModel.Destinationselected,

          indicatorColor: Color(0xff998558),
          indicatorShape:CircleBorder(),
          selectedIndex: viewModel.selectedIndex,
          backgroundColor:Colors.white,
          destinations: <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined,),
              selectedIcon: Icon(Icons.home,
                color: viewModel.selectedIndex==0?Colors.white:null,),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.dashboard_customize_outlined),
              selectedIcon: Icon(Icons.dashboard_customize_outlined,
                color: viewModel.selectedIndex==1?Colors.white:null,),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite_border,
                color: viewModel.selectedIndex==2?Colors.white:null,),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.notifications_none),
              selectedIcon: Icon(Icons.notifications_none,
                color: viewModel.selectedIndex==3?Colors.white:null,),

              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              selectedIcon: Icon(Icons.account_circle_outlined,
                color: viewModel.selectedIndex==4?Colors.white:null,),

              label: '',
            ),
          ],
        ),
      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
