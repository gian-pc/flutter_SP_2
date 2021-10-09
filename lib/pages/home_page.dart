import 'package:flutter/material.dart';
import 'package:flutter_codigo3_sp_2/widgets/my_drawer_widget.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Home Page"),
      ),
      drawer:MyDrawerWidget(),
      body: Container(
        padding: EdgeInsets.all(12.0),
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.greenAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0,5)
            )
          ]
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Gian Carlos"),
              subtitle: Text("Name"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Av. Lima 1323"),
              subtitle: Text("Address"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Active"),
              subtitle: Text("Dark mode"),
            ),
            ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text("Male"),
              subtitle: Text("Gender"),
            ),
          ],
        ),
      )
    );
  }
}
