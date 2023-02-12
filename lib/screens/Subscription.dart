import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gym_ui_app/share/themes.dart';

class Sub extends StatefulWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        centerTitle: true,
        title: Text('Subscription', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SubCard(),
            SizedBox(
              height: 20,
            ),
            SubCard(),
            SizedBox(
              height: 20,
            ),
            SubCard(),
            SizedBox(
              height: 20,
            ),
            SubCard(),
          ],
        ),
      ),
    );
  }
}

Widget SubCard() => Container(
  height: 225,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(13),
    color: CardColor,
  ),
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      Row(
        children: [
          Image(image: AssetImage('assets/images/protin_logo.png'), height: 100,),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ultimate Power Gym', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              RatingBar.builder(
                minRating: 1,
                initialRating: 3,
                itemBuilder: (context,_)=> Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating){},
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Divider(
        color: Colors.white,
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Subscription Date', style: TextStyle(fontSize: 15, color: Colors.grey)),
          Text('Plan', style: TextStyle(fontSize: 15, color: Colors.grey)),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('25 june 2022 to 25 june 2023', style: TextStyle(fontSize: 15, color: Colors.grey)),
          Text('\$99', style: TextStyle(fontSize: 15, color: Colors.grey)),
        ],
      ),
    ],
  ),
);