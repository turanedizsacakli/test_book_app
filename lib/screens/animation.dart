import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'myhomepage.dart';
import '../main.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    //width of phone
    double _w = MediaQuery.of(context).size.width;
    int _wint=_w.toInt();
    return Scaffold(
      /*appBar: AppBar(
          title: Text("Answers"),
          centerTitle: true,
          brightness: Brightness.dark),*/
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          //all(16.0),
          child: AnimationLimiter(
              child: ListView.builder(
                padding: EdgeInsets.all(_w / 40),
                physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemCount: 1,
                itemBuilder: (BuildContext c, int i) {
                  return AnimationConfiguration.staggeredList(
                    position: i,
                    delay: Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      horizontalOffset: 30,
                      verticalOffset: 300.0,
                      child: FlipAnimation(
                        duration: Duration(milliseconds: 3000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        flipAxis: FlipAxis.y,
                        child: Container(
                          margin: EdgeInsets.only(bottom: _w / 20),
                          //height: _w / 3,
                          height: _w,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                //color: Colors.black.withOpacity(0.1),
                                color: Colors.black,
                                blurRadius: 40,
                                spreadRadius: 10,
                              ),
                            ],
                          ),

                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Doğru Cevap : A \n \n Açıklama : \n \n ..... ',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
        ),
      ),



      //mainpage button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.home),
      ),

    );
  }

}
