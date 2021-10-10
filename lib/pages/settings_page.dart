import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String nameValue = "";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getSharedPreferences();
  }

  getSharedPreferences() async {
    SharedPreferences luisito = await SharedPreferences.getInstance();
    _nameController.text = luisito.getString("name") ?? "No name";

  }

  saveSharedPreferences() async {
    SharedPreferences ramon = await SharedPreferences.getInstance();
    ramon.setString("name", nameValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              "My Settings",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff424242),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: "Name"),
              onChanged: (String value) {
                nameValue = value;
                saveSharedPreferences();
              },
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(hintText: "Address"),
            ),
          ),
          SizedBox(height: 20.0),
          SwitchListTile(
            value: true,
            onChanged: (bool value) {},
            title: Text("Dark Mode"),
            subtitle: Text("Active dark mode!"),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              "Gender",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff424242),
              ),
            ),
          ),
          RadioListTile(
            value: 1,
            groupValue: 1,
            title: Text("Male"),
            onChanged: (value) {},
          ),
          RadioListTile(
            value: 1,
            groupValue: 1,
            title: Text("Female"),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
