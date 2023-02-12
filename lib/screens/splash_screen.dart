import 'package:flutter/material.dart';
import 'package:gym_ui_app/screens/welcome_screen.dart';
import 'package:gym_ui_app/share/themes.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/gym_logo.png'), fit: BoxFit.cover, width: double.infinity, height: double.infinity,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 90.0),
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: ( BuildContext context) => Welcome()));
              },
                  icon: Icon(Icons.arrow_forward, color: ButtonColor,))
            ),
          ),


        ],
      ),
    );
  }
}
