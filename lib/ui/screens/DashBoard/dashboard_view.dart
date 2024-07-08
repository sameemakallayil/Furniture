import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  // final User user;
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
        bottomNavigationBar: Consumer<DashboardViewModel>(
          builder: (context, userModel, child) {
           return NavigationBar(
             onDestinationSelected:
             viewModel.Destinationselected,



             indicatorColor: Color(0xff998558),

             indicatorShape:CircleBorder(),
             selectedIndex: viewModel.currentPageIndex,
             backgroundColor:Colors.white,
             destinations: <NavigationDestination>[
               NavigationDestination(
                 icon: Icon(Icons.home_outlined,),
                 selectedIcon: Icon(Icons.home,
                   color: viewModel.currentPageIndex==0?Colors.white:null,),
                 label: '',
                 enabled: true,
               ),
               NavigationDestination(
                 icon: Icon(Icons.dashboard_customize_outlined),
                 selectedIcon: Icon(Icons.dashboard_customize_outlined,
                   color: viewModel.currentPageIndex==1?Colors.white:null,),
                 label: '',
               ),
               NavigationDestination(
                 icon: Icon(Icons.favorite_border),
                 selectedIcon: Icon(Icons.favorite_border,
                   color: viewModel.currentPageIndex==2?Colors.white:null,),
                 label: '',
               ),
               NavigationDestination(
                 icon: Icon(Icons.notifications_none),
                 selectedIcon: Icon(Icons.notifications_none,
                   color: viewModel.currentPageIndex==3?Colors.white:null,),

                 label: '',
               ),
               NavigationDestination(
                 icon: Icon(Icons.account_circle_outlined),
                 selectedIcon: Icon(Icons.account_circle_outlined,
                   color: viewModel.currentPageIndex==4?Colors.white:null,),

                 label: '',
               ),
             ],
           );
          },
        ),


      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
