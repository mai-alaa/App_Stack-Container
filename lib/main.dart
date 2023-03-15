import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//SingleChildScrollView------>column &row
//scrollDirection: Axis.horizontal---->row
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 18, 4, 56),
          leading: Icon(Icons.menu),
          title: Text(
            'Content',
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                print('Notification is activated');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                print('Searching...');
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0),
                    bottomEnd: Radius.circular(20.0),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg',
                      ),
                      width: 400.0,
                      height: 400.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: 400.0,
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
