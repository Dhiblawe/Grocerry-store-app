import 'package:flutter/material.dart';
import 'package:grocerry_store_app/widgets/ItemBottomBar.dart';
class itemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 230, 177),
            width: double.infinity,
            height: 390,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 27,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ]
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Color(0xFFFFB608),
                        ),
                      )
                    ],
                  ),
                  ),
                  Image.asset("assets/images/b.png",
                  height: 275,
                  width: 275,
                  fit: BoxFit.contain,
                  )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Column(
                  children: [
                    Text("\$45",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),
                    ),
                    SizedBox(height: 5),
                    Text("300 Gram",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            margin: EdgeInsets.symmetric(horizontal: 8),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Product Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                ),
                SizedBox(height: 8),
                Text("Description of the product.Description of the product.Description of the product.",
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(left: 18),
              child: Text("For you",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=1; i<9; i++)
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 8, bottom: 8, left: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 225, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ]
                      ),
                      child: Image.asset("assets/images/$i.png",
                      fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: ItemBottomBar(),
    );
  }
}