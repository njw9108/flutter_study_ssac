import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  User user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Instargram Clone',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Instargram에 오신것을 환영합니다.',
                  style: TextStyle(fontSize: 26),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text('사진과 동영상을 보려면 팔로우 하세요.'),
                Padding(padding: EdgeInsets.all(16)),
                SizedBox(
                  width: 260,
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(8)),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(user.photoURL ?? ''),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Text(
                            user.email ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(user.displayName ?? ''),
                          Padding(padding: EdgeInsets.all(8)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  'https://t1.daumcdn.net/cfile/blog/993CFE4E5D64978514',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(1)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  'https://t1.daumcdn.net/cfile/blog/993CFE4E5D64978514',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(1)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  'https://t1.daumcdn.net/cfile/blog/993CFE4E5D64978514',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          Text('Facebook 친구'),
                          Padding(padding: EdgeInsets.all(8)),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('팔로우'),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
