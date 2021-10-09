import 'package:flutter/material.dart';
import 'package:flutter_codigo3_sp_2/pages/settings_page.dart';

class MyDrawerWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff1C1C1C),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white60,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/03/50/64/40/360_F_350644095_ZtIo5lqaaBSeIXBxQVvgy9L1lQqcwCUM.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius:30.0,
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/997472/pexels-photo-997472.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Gian Carlos Paucar Cortez", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                  Text("Developer", style: TextStyle(color: Colors.white60),),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled,color: Colors.white,),
              title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.white,),
              title: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
              },
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),
            Divider(color: Colors.white54,),
            ListTile(
              leading: Icon(Icons.exit_to_app,color: Colors.white,),
              title: Text("Logout", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),
            Divider(color: Colors.white54,),
            ListTile(
              title: Text("About Us", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),
            ListTile(
              title: Text("Privacy Policy", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),

          ],
        ),
      ),
    );
  }
}
