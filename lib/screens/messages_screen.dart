import 'package:flutter/material.dart';

import '../share/themes.dart';

class Message extends StatefulWidget {
  static String tag = '/DemoMWListTileScreen';

  @override
  MessageState createState() => MessageState();
}

class MessageState extends State<Message> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {

  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        automaticallyImplyLeading: false,
        title: Text('Messages', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: MessageColor,
            margin: EdgeInsets.all(8),
            elevation: 2,
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(radius: 20, backgroundImage: Image.asset(userList[index].images!).image),
              title: Text(
                userList[index].name!,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Container(
                margin: EdgeInsets.only(top: 4),
                child: Text(userList[index].value!, style: TextStyle(color: Colors.white, fontSize: 12),),
              ),
              trailing: Container(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.chevron_right, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

class UserModel {
  String? images;
  String? name;
  String? value;

  UserModel({
    this.images,
    this.name,
    this.value,
  });
}

List<UserModel> userList = [
  UserModel(
    images: 'assets/images/nicola.png',
    name: 'Nicola',
    value: '2 min ago',
  ),
  UserModel(
    images: 'assets/images/george.png',
    name: 'Hani',
    value: '1 hour ago',
  ),
  UserModel(
    images: 'assets/images/ryan.png',
    name: 'Ryan',
    value: '15 hour ago',
  ),
  UserModel(
    images: 'assets/images/george.png',
    name: 'George',
    value: '3 days ago',
  ),
];
