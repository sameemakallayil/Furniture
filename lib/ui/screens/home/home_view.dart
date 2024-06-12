import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnitureproject/gen/fonts.gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
   HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   final List<Widget> _pages = [
     const PageOne(),
     const PageTwo(),
     const PageThree()
   ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: viewModel.pagecontroller,
              onPageChanged:(int page) {
                setState(() {
                  viewModel.updatePages(page);
                });
              },

    itemCount: _pages.length,
                itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
    }


            ),
      Positioned(
          bottom: 50,
         left: 165,
          height: 5,

          child: SmoothPageIndicator(

          controller: viewModel.pagecontroller,  // PageController
              count:  _pages.length,
              effect:  ExpandingDotsEffect(
                dotColor: Color(0xffB3B2BB),
                activeDotColor: Color(0xff151344),
                dotHeight: 8,
                dotWidth: 8
              ),  // your preferred effect
              onDotClicked: (index){
                viewModel.pagecontroller.animateToPage(index,
                                    duration: const Duration(milliseconds: 1),
                                    curve: Curves.easeIn);
              }
          )


      ),

          ],
        )
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 45,),
              child: TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PageThree()),
                );
              },
                  child: Text('Skip',style: TextStyle(color:Color(0xff998558),
                  fontSize: 14,fontWeight: FontWeight.bold,fontFamily:FontFamily.inter),)),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text('Welcome to',style: TextStyle(
          fontFamily:FontFamily.inter,
          fontSize: 25,
          fontWeight: FontWeight.normal
        ),
        ),
        Text('Furnie',style: TextStyle(
            fontFamily:FontFamily.inter,
          fontSize: 36,
          fontWeight: FontWeight.w500
        ),),
        SizedBox(
          height: 5,
        ),
        Text('One app for all smart home elements.',
    style: TextStyle(
    fontFamily:FontFamily.inter,
    fontSize: 14,)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Expanded(
                  child: Container(
                    width: 390,
                    height: 550,
                  ),
                ),

                Positioned(
                  right: 85,
                  bottom: 10,
                  child: Image.asset('assets/images/splash.png',height: 450,width: 353,
                  ),
                ),
                Positioned(
                  bottom: 120,
                  left: 150,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 330),
                    child: SizedBox(
                      height: 48,
                      width: 206,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  PageTwo()),
                        );
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffA08C62),
                          ),
                          child: Text('Get Started',
                          style: TextStyle(color: Color(0xffFFFFFF)),)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )

      ],
    );
  }
}
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash2.png",),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 45,),
                child: TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  PageThree()),
                  );
                },
                    child: Text('Skip',style: TextStyle(color:Color(0xff998558),
                        fontSize: 14,fontWeight: FontWeight.bold,fontFamily:FontFamily.inter),)),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('Make your',style: TextStyle(
              fontFamily:FontFamily.inter,
              fontSize: 25,
              fontWeight: FontWeight.normal
          ),
          ),
          Text('Dream House',style: TextStyle(
              fontFamily:FontFamily.inter,
              fontSize: 36,
              fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 20,
          ),
          Text('Modern furniture make you want \n to stay in.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily:FontFamily.inter,

                fontSize: 14,)),

          Padding(
            padding:  EdgeInsets.only(top: 360),
            child: SizedBox(
              height: 48,
              width: 200,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PageThree()),
                );
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffA08C62),
                  ),
                  child: Text('Continue',
                    style: TextStyle(color: Color(0xffFFFFFF)),)),
            ),
          )

        ],
      ),
    );
  }
}
class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(

        children: [

          SizedBox(
            height: 150,
          ),

          Text("Minimal Furniture's",style: TextStyle(
              fontFamily:FontFamily.inter,
              fontSize: 36,
              fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 5,
          ),

          Stack(
            children: [
              Container(
                width: 390,
                height: 450,
              ),

              Positioned(
                top: 10,
                  left: 50,
                  child:Text('Our products combine functional stability \n with elegance, keeping in view the '
                      '\n efficient use of floor space.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily:FontFamily.inter,

                        fontSize: 14,)), ),
              Positioned(
                top: 70,
                left: 60,
                child: Image.asset('assets/images/splash3.png',
                  height: 370,
                  width: 370,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 48,
            width: 200,
            child: ElevatedButton(onPressed: (){
              HomeViewModel().nextPage();
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffA08C62),
                ),
                child: Text('Create Account',
                  style: TextStyle(color: Color(0xffFFFFFF)),)),
          )

        ],
      );
  }
}



// class TitleSection extends ViewModelWidget<HomeViewModel> {
//   const TitleSection({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, HomeViewModel viewModel) {
//     return PageView.builder(itemCount: slides.length,
//       itemBuilder: (BuildContext context, int index) {  },)
//   }
// }
