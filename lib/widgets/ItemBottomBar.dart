import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 75,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 59,
              width: 79,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                CupertinoIcons.cart_fill,
                size: 34,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            ),
            GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 218,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Hadda Iibso",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
              )
            ),
            ),
        ],
      ),
    );
  }
}