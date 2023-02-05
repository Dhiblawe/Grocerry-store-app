import 'package:grocerry_store_app/pages/home.dart';
import 'package:flutter/material.dart';
class homeposts extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ]
      ),
      child: Column(
        children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Flash Sale",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        SizedBox(height: 14),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          shrinkWrap: true,
          children: [
            for(int i = 1; i < 9; i++)
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF7F5F8),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ]
              ),
              child: Column(children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "itemPage");
                  },
                  child: Image.asset("assets/images/$i.png",
                  fit: BoxFit.contain,
                  height: 125,
                  width: 115,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Item Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )
                      ),
                      SizedBox(height: 11),
                      Row(children: [
                        Text("\$45",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 182, 8)
                        ),
                        ),
                        SizedBox(height: 5),
                        Text(" / 1KG",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        ),
                        Spacer(),
                        Icon(Icons.favorite_border,
                        color: Color.fromARGB(255, 255, 182, 8),
                        size: 27,
                        ),
                      ],)
                    ],
                  ),
                )
              ],),
            )
          ],
        ),
      ],),
    );
  }
}