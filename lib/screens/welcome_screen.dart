import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_ui_app/screens/signin_screen.dart';
import 'package:gym_ui_app/screens/signup_screen.dart';
import 'package:gym_ui_app/share/themes.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/gym_logo.png')),
            MaterialButton(
              minWidth: 320.0,
              height: 45.0,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Text('SIGN UP', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
      color: ButtonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.white)
      ),
              ),
            SizedBox(height: 20),
            MaterialButton(
              minWidth: 320.0,
              height: 45.0,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text('SIGN IN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              color: Color(0xFF000000),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.white)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
