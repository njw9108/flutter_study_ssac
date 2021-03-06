import 'package:conference_information/api.dart' as api;
import 'package:conference_information/model/conference_data.dart';
import 'package:conference_information/ui/conference_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20.0, left: 8, right: 8, bottom: 8),
            child: Text(
              'Conferences',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          FutureBuilder<List<ConferenceData>>(
              future: api.fetchList(),
              initialData: [],
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text('에러가 발생했습니다');
                }
                if (!snapshot.hasData) {
                  return Text('데이터가 없습니다');
                }
                List<ConferenceData> conferences = snapshot.data;
                return ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: conferences.map((e) => ConferenceList(e)).toList(),
                );
              }),
        ],
      ),
    );
  }
}
