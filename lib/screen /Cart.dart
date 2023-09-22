import 'package:flutter/material.dart';
import 'package:food/ulities/Global.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.red,
        elevation: 0,
        actions: [
          Icon(
            Icons.shopping_basket,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        height: 800,
        width: 400,
        color: Colors.red,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Shoping\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: global.allProducts.map((e)  )
              
              Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 140,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10)),
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("${e['thumbnail']}"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              }
            ),
          ],
        ),
      ),
    );
  }
}
