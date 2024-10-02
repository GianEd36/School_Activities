import 'package:flutter/material.dart';

void main(){
  runApp(MyFirstApp());
}
class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainscreen(),
    );
  }
}
class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 125,
                    height: 125,
                    color: Colors.blue
                  ),
                  Container(
                    width: 125,
                    height: 125,
                    color: Colors.red
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 125,
                    height: 125,
                    color: Colors.black,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 125,
                    height: 125,
                    color: Colors.yellow
                  ),
                  Container(
                    width: 125,
                    height: 125,
                    color: Colors.brown
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}