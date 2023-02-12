import 'package:flutter/material.dart';

import '../share/themes.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        title: Text('Profile', style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppBarColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/me1.png'),
                  radius: 60.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text(
                    'Khaleel Mahdi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      Text(
                        "Gaza, Salah Khalaf Street",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                 ),
              ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.white),
                    title: Text('About You', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.white),
                    title: Text('Email', style: TextStyle(color: Colors.white,),),
                    subtitle: Text('khlilmhdi02@gmail.com', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android, color: Colors.white),
                    title: Text('Phone Number', style: TextStyle(color: Colors.white,),),
                    subtitle: Text('+972 598 137 134', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.vpn_key, color: Colors.white),
                    title: Text('Password', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.location_city, color: Colors.white),
                    title: Text('Country', style: TextStyle(color: Colors.white,),),
                    subtitle: Text('Palestine, Gaza', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.language, color: Colors.white),
                    title: Text('Language', style: TextStyle(color: Colors.white,),),
                    subtitle: Text('English', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.white),
                    title: Text('Notifications', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.remove_red_eye_rounded, color: Colors.white),
                    title: Text('Privacy Policy', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.rule_folder_sharp, color: Colors.white),
                    title: Text('Terms of Use', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app, color: Colors.red),
                    title: Text('Logout', style: TextStyle(color: Colors.white,),),
                    onTap: () {},
                       ),
                    ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
