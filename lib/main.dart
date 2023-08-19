import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: calculatorApp(),
  ));
}

class calculatorApp extends StatefulWidget {
  const calculatorApp({super.key});

  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container(
            width: double.infinity ,
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Values",
                  style: TextStyle(
                    fontSize: 48, 
                    color: Colors.white,
                    ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Result",
                  style: TextStyle(
                    fontSize: 34, 
                    color: Colors.white.withOpacity(0.7),
                    ),
                ),
                SizedBox(height: 30,),
            ]),
          )), 

          //Button Area
          Row(
            children: [
              button(
                text: "AC", 
                btnBackground: operatorColor,
                tColor: orangeColor,
                ),
              button(
                text: "<", 
                btnBackground: operatorColor,
                tColor: orangeColor,
                ),
              button(
                text: "", btnBackground: Colors.transparent, 
                ),
              button(
                text: "/", 
                ),
            ],
          ),
          Row(
            children: [
              button(
                text: "7", 
                ),
              button(
                text: "8", 
                ),
              button(
                text: "9",
                ),
              button(
                text: "X", 
                ),
            ],
          ),
          Row(
            children: [
              button(
                text: "4", 
                ),
              button(
                text: "5", 
                ),
              button(
                text: "6", 
                ),
              button(
                text: "-", 
                ),
            ],
          ),
          Row(
            children: [
              button(
                text: "1", 
                ),
              button(
                text: "2", 
                ),
              button(
                text: "3", 
                ),
              button(
                text: "+", 
                ),
            ],
          ),
          Row(
            children: [
              button(
                text: "%", 
                tColor: orangeColor,
                ),
              button(
                text: "0", 
                ),
              button(
                text: ".", 
                ),
              button(
                text: "=", 
                btnBackground: orangeColor,
                ),
            ],
          ),
        ],
      ),
    );
  }


  Widget button({
    text, tColor = Colors.white, btnBackground = buttonColor,
  }) {
    return Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(22),
                      primary: btnBackground,
                    ),
                    onPressed: (){}, 
                    child: Text(
                       text, 
                      style: TextStyle(
                      fontSize: 18,
                       color: tColor,
                       fontWeight: FontWeight.bold,
                    ),)
                    ),
                ), 
              );
  }
}