import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instargram_clone2/ui/login_page.dart';

import 'tab_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  bool completed = false;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      setState(() {
        completed = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return (completed == false)
        ? Center(child: CircularProgressIndicator())
        : StreamBuilder<User>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return TabPage(snapshot.data);
              } else {
                return LoginPage();
              }
            },
          );
  }
}
