import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
        theme: ThemeData(
            useMaterial3: true, scaffoldBackgroundColor: Colors.cyan));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.transparent,
        title: Text('Demo App'),
        leading: Icon(
          Icons.arrow_back_ios_new,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Cliclk'); //event
            },
            icon: const Icon(
              Icons.search,
              size: 40,
            ),
          ),
          PopupMenuButton(
              initialValue: 'Home',
              icon: const Icon(Icons.menu),
              onCanceled: () {
                print('User canceled');
              },
              onOpened: () {
                print('user opened');
              },
              iconSize: 30,
              itemBuilder: (context) => <PopupMenuItem>[
                    const PopupMenuItem(
                        value: 'Home',
                        child: Row(
                          children: [Icon(Icons.home), Text('Home')],
                        )),
                    const PopupMenuItem(
                        value: 'settings',
                        child: Row(
                          children: [Icon(Icons.settings), Text('Settings')],
                        )),
                    const PopupMenuItem(
                      value: 'logout',
                      child: Row(
                        children: [Icon(Icons.logout), Text('Logout')],
                      ),
                    )
                  ]),
        ],
        titleTextStyle: const TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
