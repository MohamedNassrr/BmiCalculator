import 'package:flutter/material.dart';
import '../../models/user_model.dart';



class userScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'mohamed nasr ',
      phone: '+201069467427',
    ),
    UserModel(
      id: 2,
      name: 'malak nasr ',
      phone: '+201063334278',
    ),
    UserModel(
      id: 3,
      name: 'nasr khalil',
      phone: '+20101234527',
    ),
    UserModel(
      id: 4,
      name: 'asmaa hussien ',
      phone: '+20106333078',
    ),
    UserModel(
      id: 1,
      name: 'mohamed nasr ',
      phone: '+201069467427',
    ),
    UserModel(
      id: 2,
      name: 'malak nasr ',
      phone: '+201063334278',
    ),
    UserModel(
      id: 3,
      name: 'nasr khalil',
      phone: '+20101234527',
    ),
    UserModel(
      id: 4,
      name: 'asmaa hussien ',
      phone: '+20106333078',
    ),
  
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.5,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.5,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
