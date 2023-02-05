import 'package:flutter/material.dart';
import 'package:grocerry_store_app/widgets/CartBottomBar.dart';
import 'package:grocerry_store_app/widgets/CartItems.dart';
class CartPage extends StatefulWidget{
  @override
  State<CartPage> createState()=> _CartPageState(); 
}
bool checkedValue = false;
class _CartPageState extends State<CartPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,
                size: 26,
                ),
              ),
              SizedBox(width: 15),
              Text("My Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.orange
              ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 1,
                    )
                  ],
                ),
                child: Icon(Icons.notifications,
                size: 30,
                color: Color.fromARGB(255, 255, 182, 8),
                ),
              )
            ],
          ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(children: [
              CheckboxListTile(
                activeColor: Colors.orange,
                title: Text("Select all items", 
                style: TextStyle(
                  fontSize: 18,
                ),),
                value: checkedValue,
                onChanged: (newValue){
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Divider(height: 28, thickness: 1,),
              CartItems(),
            ],),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.3),
                )
              ]
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sub Total:",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                   Text("\$99.99",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)
                ],
              ),
              Divider(height: 20, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery:",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                   Text("\$15",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)
                ],
              ),
               Divider(height: 20, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount:",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                   Text("-\$12",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)
                ],
              ),
            ],),
          )
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}