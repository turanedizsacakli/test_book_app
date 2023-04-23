import 'package:flutter/material.dart';
import 'package:test_book_app/screens/animation.dart';

import 'login_signup_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _group2SelectedValue;

  @override
  void initState() {
    _group2SelectedValue = "A";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Book App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Selected Character: ",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '$_group2SelectedValue ',
                                  style: TextStyle(fontSize: 30)),
                            ]))),

                // For A
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "A",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                    Container(
                      child: Radio(
                          value: "A",
                          groupValue: _group2SelectedValue,
                          onChanged: _group2Changes),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "BURAYA SORU... ",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                  ],
                ),

                // For B
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "B",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                    Container(
                      child: Radio(
                          value: "B",
                          groupValue: _group2SelectedValue,
                          onChanged: _group2Changes),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "BURAYA SORU... ",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                  ],
                ),

                // For C
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "C",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                    Container(
                      child: Radio(
                          value: "C",
                          groupValue: _group2SelectedValue,
                          onChanged: _group2Changes),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "BURAYA SORU... ",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                  ],
                ),

                // For D
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "D",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                    Container(
                      child: Radio(
                          value: "D",
                          groupValue: _group2SelectedValue,
                          onChanged: _group2Changes),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "BURAYA SORU... ",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                  ],
                ),

                // For E
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "E",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                    Container(
                      child: Radio(
                          value: "E",
                          groupValue: _group2SelectedValue,
                          onChanged: _group2Changes),
                    ),
                    Container(
                      child: RichText(
                          text: TextSpan(
                            text: "BURAYA SORU... ",
                            style: TextStyle(fontSize: 30, color: Colors.blue),
                          )),
                    ),
                  ],
                ),

                //Cevap Buttonu
                Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Answer : ",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '$_group2SelectedValue ',
                                  style: TextStyle(fontSize: 30)),
                            ]))),

                Row(children: [
                  // A D D BUTTON...
                  //Flexible(
                  Expanded(
                    //fit: FlexFit.tight,
                    //flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyCustomWidget()));
                        SizedBox(width: 20.0);
                      },

                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.question_mark),
                              SizedBox(width: 5.0),
                              Text(
                                " CEVABI ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    //fit: FlexFit.tight,
                    //flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_SignUp_Page()));
                        SizedBox(width: 20.0);
                      },

                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.question_mark),
                              SizedBox(width: 5.0),
                              Text(
                                " CEVABI ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 2.0),
                ])

                /*// U P D A T E BUTTON...

    Flexible(
    fit: FlexFit.tight,
    flex: 3,
    child: ElevatedButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentEdit(selectedStudent)));
    },
    child: Row(
    children: [
    Icon(Icons.update),
    SizedBox(width: 5.0),
    Text(" UPDATE ", style: TextStyle( fontSize: 12, color: Colors.white,backgroundColor: Colors.yellow),
    ),
    ],
    ),
    ),
    ),
    SizedBox(width: 2.0),

    // D E L E T E BUTTON...

    Flexible(
    fit: FlexFit.tight,
    flex: 2,
    child: ElevatedButton(
    onPressed: () {
    setState(() {
    students.remove(selectedStudent);
    var Message = selectedStudent.firstName! + " deleted...!!!";
    messageAlert(context, Message);
    });
    },
    child: Row(
    children: [
    Icon(Icons.delete),
    SizedBox(width: 5.0),
    Text(" DELETE ", style: TextStyle( fontSize: 12, color: Colors.white,backgroundColor: Colors.red),
    ),
    ],
    ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _group2Changes(String? value) {
    setState(() {
      _group2SelectedValue = value;
    });
  }
}
