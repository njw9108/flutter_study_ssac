import 'package:conference_information/model/conference_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class ConferenceDetail extends StatelessWidget {
  final ConferenceData conferenceData;

  ConferenceDetail(this.conferenceData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          conferenceData.name,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Text(conferenceData.location),
          Row(
            children: [
              Text(conferenceData.start),
              Text(' - '),
              Text(conferenceData.end),
            ],
          )
        ],
      ),
    );
  }
}
