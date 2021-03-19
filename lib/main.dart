import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double customOpacity = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TweenAnimationBuilder(

                  onEnd: (){
                    setState(() {
                      customOpacity = 1;
                    });
                  },

                  curve: Curves.bounceOut,
                  duration: Duration(seconds:  2),
                  tween: Tween<double>(
                    begin: 0,
                    end: 200
                  ),
                  builder: (BuildContext context, dynamic value, Widget child){
                    return Container(
                        height: value,
                        width: value,
                        child: Image.asset('assets/images/sound.png',
                          color: Colors.deepOrangeAccent,
                        ),
                    );
                  } ,
                                  ),

                SizedBox(height: 10,),

                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: customOpacity,
                  child: Text('SoundCloud', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
              )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

