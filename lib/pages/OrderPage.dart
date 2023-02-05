import 'package:flutter/material.dart';
class OrderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 26,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                alignment: Alignment.centerLeft,
                child: Text("Fill Order Details",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.only(left: 15, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 365,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "First Name",
                    hintStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.only(left: 15, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 365,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Last Name",
                    hintStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.only(left: 15, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 365,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Tell",
                    hintStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.only(left: 15, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 365,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Address",
                    hintStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.only(left: 15, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 365,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: EdgeInsets.only(left: 15, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 365,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "City",
                    hintStyle: TextStyle(fontSize: 20)
                  ),
                ),
              ),
              SizedBox(height: 48),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,

                  ),
                  child: Text("Hadda Dalbo", 
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}