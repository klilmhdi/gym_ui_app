import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../share/themes.dart';

class Resturant extends StatelessWidget {
  const Resturant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Column(
        children: [
          Container(
            color: CardColor,
            child: Column(
              children: [
                Image(image: AssetImage('assets/images/protin_background.png')),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(radius: 50.0, backgroundImage: AssetImage('assets/images/protin_bar_logo.png',),),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Protein Bar',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                RatingBar.builder(
                  minRating: 1,
                  initialRating: 3,
                  itemSize: 30,
                  itemBuilder: (context,_)=> Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating){},
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Colors.white,
                          ),
                          Text(
                            '0598325454',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Text(
                            'Gaza - Al Remal',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Text('Resturant Services', style: TextStyle(color: Colors.white, fontSize: 20.0),)
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: CardColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              title: Text('Weight Loss', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
              subtitle: Text('Lorem ipsum dolor sit amet', style: TextStyle(color: Colors.white, fontSize: 15.0),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: CardColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              title: Text('Build Muscle', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
              subtitle: Text('Lorem ipsum dolor sit amet', style: TextStyle(color: Colors.white, fontSize: 15.0),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: CardColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              title: Text('Increase Energy', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
              subtitle: Text('Lorem ipsum dolor sit amet', style: TextStyle(color: Colors.white, fontSize: 15.0),),
            ),
          ),
        ],
      ),
    );
  }
}
