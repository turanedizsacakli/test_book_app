/*
import 'package:flutter/material.dart';
import 'screens/myhomepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Book App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final DatabaseReference dbRef =
  FirebaseDatabase.instance.reference().child('questions');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Firebase Demo"),
      ),
      body: FutureBuilder<DatabaseEvent>(
        future: dbRef.orderByChild('id').equalTo(1).limitToFirst(1).once(),
        builder: (BuildContext context, AsyncSnapshot<DatabaseEvent> snapshot) {
          if (snapshot.hasData) {
            Map<dynamic, dynamic>? values =
            snapshot.data?.snapshot.value as Map<dynamic, dynamic>?;
            if (values != null) {

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Soru " + (values["id"]?.toString() ?? ""),style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                  SizedBox(height: 8.0,),
                  Text( values["question"]?.toString() ?? "", style: TextStyle( fontSize: 20.0,), ),
                  SizedBox(height: 16.0,),
                  Text("A: " + (values["A"]?.toString() ?? ""), style: TextStyle(fontSize: 16.0,),),
                  SizedBox(height: 8.0,),
                  Text("B: " + (values["B"]?.toString() ?? ""), style: TextStyle(fontSize: 16.0,),),
                  SizedBox(height: 8.0,),
                  Text("C: " + (values["C"]?.toString() ?? ""), style: TextStyle(fontSize: 16.0,),),
                  SizedBox(height: 8.0,),
                  Text("D: " + (values["D"]?.toString() ?? ""), style: TextStyle(fontSize: 16.0,),),
                  SizedBox(height: 8.0,),
                  Text("E: " + (values["E"]?.toString() ?? ""), style: TextStyle(fontSize: 16.0,),),
                  SizedBox(height: 16.0,),
                  Text("Cevap: " + (values["answer"]?.toString() ?? ""), style: TextStyle(fontSize: 20.0,),),
                ],
              );

            }
          } else if (snapshot.hasError) {
            return Center(
                child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
