import 'package:flutter/material.dart';
import 'package:satu_fasilkomti/intro_screen/intro_page_1.dart';
import 'package:satu_fasilkomti/intro_screen/intro_page_2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
// controller to keep track of which page we're on
  PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            IntroPage1(),
            IntroPage2(),
          ],
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MyRoute(builder: (_) => IntroPage2()));
            },
          ),
        )
      ],
    ));
  }
}

class MyRoute extends MaterialPageRoute {
  MyRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => Duration(seconds: 2);
}
