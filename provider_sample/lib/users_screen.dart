import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/utils.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find New Friends'),
      ),
      body: Center(
        child: Consumer<UserProvider>(
          builder: (context, userValue, child) => ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final user = userList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(user),
                    TextButton(
                      onPressed: () {
                        userValue.usersList.contains(user)
                            ? userValue.unFollow(user)
                            : userValue.follow(user);
                      },
                      child: userValue.usersList.contains(user)
                          ? const Text('UnFollow')
                          : const Text('Follow'),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<String> userList = [
  'Alene Speight',
  'Viki Earles',
  'Kami Mule',
  'Carrol Hild',
  'Deloras Klinger',
  'Karina Godbolt',
  'Rachell Buckle',
  'Mariah Straight',
  'Marla Laffoon',
  'Rhiannon Norrell',
  'Le Gerrish',
];
