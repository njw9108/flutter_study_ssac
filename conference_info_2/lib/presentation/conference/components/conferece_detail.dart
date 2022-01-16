import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConferenceDetail extends StatelessWidget {
  final ConferenceInfo conferenceInfo;

  const ConferenceDetail({
    Key? key,
    required this.conferenceInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(
            conferenceInfo.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            conferenceInfo.location,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            conferenceInfo.start + ' ~ ' + conferenceInfo.end,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          TextButton(
              onPressed: () {
                _launchInBrowser(conferenceInfo.link);
              },
              child: const Text('Go to official website'))
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await launch(url)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }
}
