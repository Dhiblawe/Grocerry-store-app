import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homebottombar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 75,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Icon(Icons.home,
          color: Colors.blue,
          size: 30,
          ),
          Text("Home",
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),)
          ],),
           Column(children: [
            Icon(Icons.search,
          color: Colors.blue,
          size: 30,
          ),
          Text("Explore",
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),)
          ],),
           InkWell(
            onTap: (){
              Navigator.pushNamed(context, "cartPage");
            },
             child: Column(children: [
              Icon(CupertinoIcons.cart,
                     color: Colors.blue,
                     size: 30,
                     ),
                     Text("My Cart",
                     style: TextStyle(
              fontSize: 15,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
                     ),)
                     ],),
           ),
           Column(children: [
            Icon(Icons.person,
          color: Colors.blue,
          size: 30,
          ),
          Text("Account",
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),)
          ],)
        ],
        ),
    );
  }
}