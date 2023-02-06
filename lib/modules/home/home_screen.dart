import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {
            print('menu pressed');
          },
        ),
        title: Text('Firstapp'),
        actions: [
          // notficattion button
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: () {
              print("notification pressed");
            },
          ),

          // search button
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search pressed");
            },
          ),
        ],
        centerTitle: true,
      ),
      //-----body------
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                     alignment: Alignment.bottomCenter,

                children: [

                  Image(
                    image: NetworkImage(
                      'https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg',
                    ),
                          width:200.0,
                          height:200.0,
                          fit: BoxFit.cover,
                  ),

                  Container(
                    width: 200.0,
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.symmetric(
                          vertical: 10.0
                           
                     ),

                    child: Text(
                      'Flower',
                         textAlign: TextAlign.center,
                         
                         style: TextStyle(
                         fontSize: 20.0,
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
    );
  }
}
