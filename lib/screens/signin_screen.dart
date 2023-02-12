import 'package:flutter/material.dart';
import 'package:gym_ui_app/screens/welcome_screen.dart';
import '../layout/home_layout_screen.dart';
import '../share/themes.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context) => Welcome()));
            },icon: Icon(Icons.arrow_back)
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: MaterialButton(
              minWidth: 320.0,
              height: 45.0,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home_layout()));
              },
              child: Text('LOGIN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              color: ButtonColor,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextButton(
              onPressed: (){},
              child: Text('Forget A Password?', style: TextStyle(color: Colors.white, fontSize: 15),),
            ),
          )
        ],
      ),
    );
  }
}
