// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sabak9_flutter/user_data.dart';
import 'package:sabak9_flutter/user_detail_page.dart';

// <> => generic

// final List sansar = [1, 2, 3, 45, 20, 30, 50, 10.5, 'Salam'];
// num resultat = sansar[0] + sansar[8];

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Колдонуучулар'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UserDetailPage(userData: user);
                  },
                ),
              );
            },
            title: Text(user.atyJony),
            subtitle: Text('${user.kesyby} ${user.jash} jashta'),
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(user.profileSurot),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
