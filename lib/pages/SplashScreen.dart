import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash.png", height: 300
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              child: Text("Buy Fresh Groceries",
              style: TextStyle(
                fontSize: 35,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),),
            ),
           // SizedBox()
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "home");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text("Get Started",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),),
            )
        ],
        ),
      ),
    );
  }
}