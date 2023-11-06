import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:satu_fasilkomti/intro_screen/intro_page_3.dart';

class IntroPage2 extends StatelessWidget {
  // This widget is the root of your application.
  final Duration initialDelay = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFB400).withOpacity(0.5),
              Color(0xFF02873D),
            ],
          )),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 65),
                  child: DelayedDisplay(
                    delay: initialDelay,
                    fadingDuration: const Duration(milliseconds: 1200),
                    slidingCurve: Curves.bounceIn,
                    slidingBeginOffset: const Offset(0, -2),
                    child: Text(
                      'SELAMAT   DATANG',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(-5, 5),
                                blurRadius: 30),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 35, top: 35),
                  child: DelayedDisplay(
                    delay: Duration(seconds: initialDelay.inSeconds + 2),
                    fadingDuration: const Duration(milliseconds: 500),
                    slidingCurve: Curves.decelerate,
                    slidingBeginOffset: const Offset(0, -0.5),
                    child: Text(
                      'Satu Fasilkom-TI adalah aplikasi manajemen beasiswa mahasiswa yang dimana dapat mengatur segala proses pengurusan      Beasiswa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: initialDelay,
                  fadingDuration: const Duration(milliseconds: 1200),
                  slidingCurve: Curves.bounceIn,
                  slidingBeginOffset: const Offset(0, 1),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Model-USU.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 3),
                  fadingDuration: const Duration(milliseconds: 500),
                  slidingCurve: Curves.decelerate,
                  slidingBeginOffset: const Offset(0, 0.5),
                  child: Container(
                    padding: const EdgeInsets.only(left: 0, top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/Logo-USU-Putih.png",
                          width: 150,
                        ),
                        SizedBox(width: 50),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(context,
                                  MyRoute(builder: (_) => IntroPage3()));
                            },
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered))
                                  return Colors.grey;
                                return Colors.white;
                              }),
                            ),
                            label: Text(
                              'Masuk',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                              ),
                            ),
                            icon: Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 19.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyRoute extends MaterialPageRoute {
  MyRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => Duration(seconds: 2);
}
