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

                //buradan
                /*SingleChildScrollView(
                    child: Container(
                        child: Center(
                            child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    const Card(
                                        elevation: 16,
                                        child: ListTile(
                                          leading: Icon(Icons.album),
                                          title: Text('Sample Card 3'),
                                          subtitle: Text('Elevation - 16'),
                                        )),
                                  ],
                                ))))),*/
                //buraya kadar

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
                buildOption("A", "A", "B ŞIKKI DOĞRUDUR..."),
                SizedBox(height: 15,),
                buildOption("B", "B", "D ŞIKKI YANLIŞTIR..."),
                SizedBox(height: 15,),
                buildOption("C", "C", "TÜM ŞIKLAR YANLIŞTIR..."),
                SizedBox(height: 15,),
                buildOption("D", "D", "A ŞIKKI YANLIŞTIR..."),
                SizedBox(height: 15,),
                buildOption("E", "E", "..."),
                SizedBox(height: 15,),

                //Cevap Yazısı
/*
                Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Cevap : ",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '$_group2SelectedValue ',
                                  style: TextStyle(fontSize: 30)),
                            ]))),
*/



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

        bottomNavigationBar:Container(
          height: 50,
          child: Row(children: [
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
          ]),
        )
    );
  }

  Widget buildOption(String label, String value, String question) {
    return Card(
      elevation: 16,
      child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Container(
              child: RichText(
                  text: TextSpan(
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

    );
  }

  void _group2Changes(String? value) {
    setState(() {
      _group2SelectedValue = value;
    });
  }
}

/* *************** START*****************


class LCard extends StatelessWidget {
  const LCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                const Card(
                    elevation: 16,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 3'),
                      subtitle: Text('Elevation - 16'),
                    )),

                Stack(
                  children: const <Widget>[
                    Card(
                        child: ListTile(
                          leading: Icon(Icons.camera),
                          title: Text('Sample Card 1 in Stack'),
                          subtitle: Text('Default Elevation'),
                        )),

                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 32, 16, 16),
                      child: Card(
                          elevation: 16,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 3 in Stack'),
                            subtitle: Text('Elevation - 16'),
                          )),
                    ),


                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 */



