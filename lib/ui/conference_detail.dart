import 'package:conference_information/model/conference_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class ConferenceDetail extends StatelessWidget {
  final ConferenceData conferenceData;

  ConferenceDetail(this.conferenceData);

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var start = DateTime.parse(conferenceData.start);
    var end = DateTime.parse(conferenceData.end);

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
                  DateFormat('MMM dd, yyyy').format(start),
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  ' - ',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  DateFormat('MMM dd, yyyy').format(end),
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              return _launchInBrowser(conferenceData.link);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Go to official website',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
