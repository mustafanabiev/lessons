// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// <> => generic

// final List sansar = [1, 2, 3, 45, 20, 30, 50, 10.5, 'Salam'];
// num resultat = sansar[0] + sansar[8];

const String tajrybaJolu =
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).';

final List<User> users = [
  User(
    atyJony: 'Seytek Semetai uulu',
    kesyby: 'Flutter Developer',
    jash: 20,
    profileSurot:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbST3kvoig8OfAD2nKpa37xBojODsxDY_phLNfVQFQ&s',
    tajrybaJolu: tajrybaJolu,
  ),
];

class User {
  final String atyJony;
  final String kesyby;
  final int jash;
  final String profileSurot;
  final String tajrybaJolu;
  User({
    required this.atyJony,
    required this.kesyby,
    required this.jash,
    required this.profileSurot,
    required this.tajrybaJolu,
  });
}

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
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text(users[0].atyJony),
              subtitle: Text(users[0].kesyby),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(users[0].profileSurot),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Semetei Manas uulu'),
              subtitle: Text('Flutter Developer'),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              title: Text('Semetei Manas uulu'),
              subtitle: Text('Flutter Developer'),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Semetei Manas uulu'),
              subtitle: Text('Flutter Developer'),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Semetei Manas uulu'),
              subtitle: Text('Flutter Developer'),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Semetei Manas uulu'),
              subtitle: Text('Flutter Developer'),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
