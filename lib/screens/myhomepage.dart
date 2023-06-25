import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_book_app/screens/animation.dart';

import '../screens/auth/login_page.dart';

class MyHomePage extends StatefulWidget {
  //const MyHomePage({super.key});
  const MyHomePage({Key? key}) : super(key: key);

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
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('dilanketi').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return ListView(
                children:
                snapshot.data!.docs.map((DocumentSnapshot document) {
                  return ListTile(title: Text(document['Sayfa1.1.answer']), subtitle: Text(document['Sayfa1.1.question'].toString()));
                }).toList()
            );
        }
      },
    );
  }
 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Book App"),
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
                    child: Card(
                      elevation: 16,
                      margin: EdgeInsets.all(20),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: "AŞAĞIDAKİLERDEN HANGİSİ DOĞRUDUR? ",
                              style: const TextStyle(fontSize: 30, color: Colors.blue,fontWeight: FontWeight.bold,),
                              //children: <TextSpan>[TextSpan(text: '$_group2SelectedValue ',style: TextStyle(fontSize: 30)),]
                            )),
                    )),
                SizedBox(height: 15,),
                buildOption("A", "A","selam"),
                //"B ŞIKKI DOĞRUDUR..."
                buildOption("B", "B", "D ŞIKKI YANLIŞTIR..."),
                buildOption("C", "C", "TÜM ŞIKLAR YANLIŞTIR..."),
                buildOption("D", "D", "A ŞIKKI YANLIŞTIR..."),
                buildOption("E", "E", "..."),


                //Doğru Cevap Yazısı
*//*
                Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Doğru Cevap : ",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '$_group2SelectedValue ',
                                  style: TextStyle(fontSize: 30)),
                            ]))),
*//*

             ],
            ),
          ),
        ],
      ),

        bottomNavigationBar:Container(
          height: 50,
          child: Row(children: [
            // A D D BUTTON...
            //Flexible(

            //Cevabı Butonu
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
                          " SORUNUN CEVABI ",
                          style: TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //login button
            Expanded(
              //fit: FlexFit.tight,
              //flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()));
                  SizedBox(width: 20.0);
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.question_mark),
                        SizedBox(width: 5.0),
                        Text(
                          " GİRİŞ YAP ",
                          style: TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(width: 2.0),
          ]),
        )
    );
  }


  //before
  Widget buildOption(String label, String value, String question) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 7),
      child: Card(
        elevation: 16,
        child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Container(
                child: RichText(
                    text: TextSpan(
                      //text:()=>textBuild(label),
                      text: label,
                      style: TextStyle(fontSize: 30, color: Colors.blue,fontWeight: FontWeight.bold,),
                    )),
              ),

              Container(
                child: Radio(
                    value: value,
                    groupValue: _group2SelectedValue,
                    onChanged: _group2Changes),
              ),

             Container(
                child: RichText(
                    text: TextSpan(
                      text: question,
                      style: TextStyle(fontSize: 25, color: Colors.blue,fontWeight: FontWeight.bold,),
                    )),
              ),
            ],
          ),
      ),
    );
  }


  void _group2Changes(String? value) {
    setState(() {
      _group2SelectedValue = value;
    });
  }

*//*  textBuild(String label) {
    if(label=="A"){
    return Icon(Icons.question_mark);
  };
  }*/

}

//my copy pace from another my project

/*
class SurveyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('dilanketi').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
          default:
            return ListView(
                children:
                snapshot.data!.docs.map((DocumentSnapshot document) {
                  return ListTile(title: Text(document['answer']), subtitle: Text(document['question'].toString()));
                }).toList()
            );
        }
      },
    );
  }
}*/
