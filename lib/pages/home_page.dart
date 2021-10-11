import 'package:flutter/material.dart';
import 'package:flutter_codigo3_sp_2/widgets/my_drawer_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String _name = "";
  String _address = "";
  bool _darkMode = false;
  int _gender = 1;

  @override
  initState(){
    super.initState();
    getData();
  }

  getData() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    _name = prefs.getString("name") ?? "-";
    _address = prefs.getString("address") ??  "-";
    _darkMode = prefs.getBool("darkMode") ??  false;
    _gender = prefs.getInt("gender") ?? 1;

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _darkMode ? Color(0xff1c1c1c) : Colors.deepPurple,
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
              title: Text(_name),
              subtitle: Text("Name"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text(_address),
              subtitle: Text("Address"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text(_darkMode ? "Active": "Inactive"),
              subtitle: Text("Dark mode"),
            ),
            ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text(_gender == 1 ? "Male":"Female"),
              subtitle: Text("Gender"),
            ),
          ],
        ),
      )
    );
  }
}
