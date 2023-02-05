import 'package:flutter/material.dart';
class CartItems extends StatefulWidget{
  @override
  State<CartItems> createState()=> _CartItemsState(); 
}
bool checkedValue = false;
class _CartItemsState extends State<CartItems>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i=1; i<5; i++)
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          child: Column(children: [
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.orange,
                      value: checkedValue,
                      onChanged: (newValue){
                        setState(() {
                          checkedValue=newValue!;
                        });
                      }
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(left: 5),
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ]
                      ),
                      child: Image.asset("assets/images/5.png",
                      fit: BoxFit.contain,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(children: [
                      Text("Item Name", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      SizedBox(height: 10),
                      Row(children: [
                        Text("\$45", 
                        style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),),
                        SizedBox(width: 5),
                        Text("/ 6KG", 
                        style: TextStyle(
                          fontSize: 15, 
                        ),),
                      ],)
                    ],),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.delete,
                        color: Color.fromARGB(255, 255, 82, 82),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFB608),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("-",
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                              ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("01",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                             Container(
                              alignment: Alignment.center,
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFB608),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("+",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                              ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
             SizedBox(height: 10),
            Divider(thickness: 1),
          ],
          ),
        ),
      ],
    );
  }
}