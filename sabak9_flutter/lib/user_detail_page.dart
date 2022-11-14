import 'package:flutter/material.dart';
import 'package:sabak9_flutter/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.userData}) : super(key: key);

  final User userData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userData.atyJony),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(userData.profileSurot),
            ),
            Text(
              userData.kesyby,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              userData.jash.toString(),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                userData.tajrybaJolu,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
