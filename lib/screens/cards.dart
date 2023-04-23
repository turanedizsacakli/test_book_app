/*
import 'package:flutter/material.dart';

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
