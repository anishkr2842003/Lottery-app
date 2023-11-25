import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Winning number
  Random random = Random();
  int winNum = 5;
  int yourNum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Lottery Game", style: TextStyle(fontSize: 25),),

          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Lottery winning number is here.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadiusDirectional.circular(50)),
                child: Center(
                    child: Text(
                  winNum.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 70),
                )),
              ),

             Container(
               height: 100,
               margin: EdgeInsets.symmetric(vertical: 25),
               padding: EdgeInsets.symmetric(horizontal: 70),
               decoration: BoxDecoration(
                 color: Colors.lightGreen,
                 borderRadius: BorderRadius.circular(20)
               ),

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Developed by", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                   Text("Anish Kumar", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),)
                 ],
               ),
             ),


              Center(
                child: Text(
                  "Your number is here.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadiusDirectional.circular(50)),
                child: Center(
                    child: Text(
                  yourNum.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 70),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              winNum == yourNum
                  ? Container(
                      height: 250,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            size: 100,
                            color: Colors.green[900],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Congratulations, you win",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Play Again ➡️",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 250,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            size: 100,
                            color: Colors.red[900],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Better Luck Next Time",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Try Again ➡️",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Hello");
            winNum = random.nextInt(10);
            yourNum = random.nextInt(10);
            print(winNum);
            print(yourNum);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
