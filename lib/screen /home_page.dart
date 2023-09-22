import 'package:flutter/material.dart';
//import 'package:lib/ulities/Global.dart';

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 120,
        color: Colors.red,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
