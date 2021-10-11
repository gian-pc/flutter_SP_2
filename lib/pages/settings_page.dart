import 'package:flutter/material.dart';
import 'package:flutter_codigo3_sp_2/utils/shared_preferences_global.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String nameValue = "";
  String addressValue = "";
  bool darkModeValue = false;
  int gender = 1;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  final SharedGlobal mandarina = new SharedGlobal();

  @override
  void initState() {
    super.initState();
    getSharedPreferences();
  }

  getSharedPreferences() {
    // SharedPreferences luisito = await SharedPreferences.getInstance();
    // nameValue = luisito.getString("name") ?? "No name";
    // addressValue = luisito.getString("address") ?? "No address";
    // darkModeValue = luisito.getBool("darkMode") ?? false;
    // gender = luisito.getInt("gender") ?? 1;
    // _nameController.text = luisito.getString("name") ?? "No name";
    // _addressController.text = luisito.getString("address") ?? "No address";

    nameValue = mandarina.name;
    addressValue = mandarina.address;
    darkModeValue = mandarina.darkMode;
    gender = mandarina.gender;

    _nameController.text = mandarina.name;
    _addressController.text = mandarina.address;

    setState(() {});
  }

  saveSharedPreferences() {
    // SharedPreferences ramon = await SharedPreferences.getInstance();
    // ramon.setString("name", nameValue);
    // ramon.setString("address", addressValue);
    // ramon.setBool("darkMode", darkModeValue);
    // ramon.setInt("gender", gender);

    mandarina.name = nameValue;
    mandarina.address = addressValue;
    mandarina.darkMode = darkModeValue;
    mandarina.gender = gender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
        backgroundColor:
            darkModeValue ? Color(0xff1C1C1C) : Colors.deepPurpleAccent,
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
              controller: _addressController,
              decoration: InputDecoration(hintText: "Address"),
              onChanged: (String value) {
                addressValue = value;
                saveSharedPreferences();
              },
            ),
          ),
          SizedBox(height: 20.0),
          SwitchListTile(
            value: darkModeValue,
            onChanged: (bool value) {
              darkModeValue = value;
              saveSharedPreferences();
              setState(() {});
              print(darkModeValue);
            },
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
            groupValue: gender,
            title: Text("Male"),
            onChanged: (int? value) {
              gender = value!;
              setState(() {});
              saveSharedPreferences();
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: gender,
            title: Text("Female"),
            onChanged: (int? value) {
              gender = value!;
              setState(() {});
              saveSharedPreferences();
            },
          ),
        ],
      ),
    );
  }
}
