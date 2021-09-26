import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/users_screen.dart';
import 'package:provider_sample/utils.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const UserScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Find Friends',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
      body: Consumer<UserProvider>(
        builder: (context, userValue, child) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text('You Are Following :'),
              Expanded(
                child: ListView.builder(
                  itemCount: userValue.usersList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(userValue.usersList[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
