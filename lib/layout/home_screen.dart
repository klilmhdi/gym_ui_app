import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gym_ui_app/screens/Subscription.dart';
import 'package:gym_ui_app/screens/resturant_screen.dart';
import '../share/themes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/images/training_image.png',
      'assets/images/training2_image.png',
      'assets/images/training3_image.png',
      'assets/images/training4_image.png'
    ];
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: AppBarColor,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.calendar_today, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sub()));
          },
        ),
        title: Image.asset(
          'assets/images/gym_logo.png',
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.subscript_sharp, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Resturant()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CoustomClipPath(),
              child: Container(
                height: 220.0,
                color: AppBarColor,
                child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Expanded(child: Text('Good Morning', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),)),
                            Text('35', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.only(right: 215.0),
                            child: Text('Tuesday, 12th July', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),)
                        ),
                      ),
                    ]
                ),
              ),
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex){
                  final position = images[index];
                  return buildCard(position, index);
                },
                // carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: 400.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  // viewportFraction: 0.9,
                  aspectRatio: 4/3,
                  // initialPage: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(child: Text('1:34 pm', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),)),
                      Text('8713 cal', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: CardColor,
                          ),
                          height: 60.0,
                          width: 150.0,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: GestureDetector(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.sports_gymnastics, size: 30.0, color: Colors.red,),
                                  SizedBox(width: 15.0),
                                  Text('Gym', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: CardColor,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          height: 60.0,
                          width: 150.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: GestureDetector(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.shopping_bag, size: 30.0, color: Colors.red,),
                                  SizedBox(width: 15.0),
                                  Text('E-Commerce', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: CardColor,
                          ),
                          height: 60.0,
                          width: 150.0,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: GestureDetector(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.person, size: 30.0, color: Colors.red,),
                                  SizedBox(width: 10.0,),
                                  Text('Trainers', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: CardColor,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          height: 65.0,
                          width: 150.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.restaurant_menu_outlined, size: 30.0, color: Colors.red,),
                                  SizedBox(width: 10.0),
                                  Text('Restaurant \n& Health', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0,height);
    // path.quadraticBezierTo(size.width*0.3781250,size.height*0.6395000,size.width*0.5006250,size.height*0.6405000);
    path.quadraticBezierTo(width * 0.5, height - 100, width, height);
    path.lineTo(width, 0);
    path.lineTo(0, 0);
    path.close();
    // path.lineTo(0, size.height - 100);
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(size.width, size.height - 100);
    // path.lineTo(size.width, 0);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget buildCard(String position, int index) => Container(
  margin: EdgeInsets.symmetric(horizontal: 12.0),
  // color: Colors.amberAccent,
  child: ClipRect(
    child: Image.asset(position),
  ),
);