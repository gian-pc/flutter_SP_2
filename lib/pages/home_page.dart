
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("Home Page"),
          ),
          drawer: Drawer(),
          body: Center(),
        );
  }
}
