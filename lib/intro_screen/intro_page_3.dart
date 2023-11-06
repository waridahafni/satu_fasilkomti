import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<IntroPage3> {
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 25,
                  top: 150.0,
                ),
                child: Center(
                  child: Container(
                      width: 115,
                      height: 115,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('assets/images/Logo-USU-01.png')),
                ),
              ),
              Text(
                'SATU FASILKOM-TI',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(4.5, 4.5),
                          blurRadius: 22.5),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75, left: 0, right: 265),
                child: Text(
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                  "NIM",
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFFFFFFF)),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.person_outlined)),
                    prefixIconColor: Colors.white,
                    focusColor: Colors.green,
                    labelText: '',
                    hintText: 'Masukkan NIM Anda',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 0, right: 220),
                child: Text(
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                  "Password",
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: Container(
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFFFFFFF)),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        prefixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.key_outlined)),
                        prefixIconColor: Colors.white,
                        labelText: '',
                        hintText: 'Masukkan Password Andad'),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 40, left: 50, right: 50, bottom: 21),
                child: Container(
                  height: 36,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF02873D),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Lupa Password',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),
              // Text('New User? Create Account')
            ],
          ),
        ),
      ),
    );
  }
}
