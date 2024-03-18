import 'dart:ffi';
import 'package:splash_screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 10),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder : (_) => HomeScreen()));
    });
}

  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays : SystemUiOverlay.values);
    super.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Splash Screen')),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purpleAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.emergency_outlined,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(height: 20,),
            Text('Emergency', style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 32,
            ),)
          ],
        ),
      ),
    );
  }
}
