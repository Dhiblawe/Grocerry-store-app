import 'package:flutter/material.dart';
import 'package:grocerry_store_app/widgets/homebottombar.dart';
import 'package:grocerry_store_app/widgets/homeposts.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Image.asset(
                "assets/images/deal1.jpg",
                height: 250,
                fit: BoxFit.cover,
                ),
            ],),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ]
            ),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for(int i = 1; i < 9; i++)
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(250, 250, 225, 170),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ]
                  ),
                  child: Image.asset("assets/images/$i.png",
                  fit: BoxFit.cover,
                  )
                )
              ],
            ),
          ),
          homeposts()
        ],
      ),
      bottomNavigationBar: homebottombar(),
    );
  }
}