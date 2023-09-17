import 'package:flutter/material.dart';
import 'package:navigate/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 118, 154, 157),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [Colors.blue, Colors.grey, Colors.white])),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/tlo.png",
              width: 120,
              height: 120,
            ),
            Text(
              "Twitter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )
          ],
        )),
      ),
      //-----------------
      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () {
      //         //Nav
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => HomeScreen(),
      //             ));

      //-------------------------------

      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomeScreen(),
      //     ));

      // Navigator.pop(context);
      //       },
      //       child: const Text("Go To Hame Screen")),
      // ),

      //-----------logo
    );
  }
}
