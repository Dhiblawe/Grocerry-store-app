import 'package:flutter/material.dart';
class CartBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 249, 253, 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ]
      ),
      child: Column(children: [
        Padding(padding: EdgeInsets.only(top: 10),
        child: Row(children: [
          Icon(Icons.discount,
          color: Color.fromRGBO(255, 182, 8, 1),
          ),
          Text("Use promo coupons", style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),)
        ],),
        ),
        Divider(height: 25, thickness: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 8),
                 Text("\$130", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "orderPage",);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Check Out", 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
              ),
            )
          ],
        )
      ],),
    );
  }
}