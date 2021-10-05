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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Conference",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  conferenceData.name,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  conferenceData.location,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  conferenceData.start,
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  ' - ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  conferenceData.end,
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


}
