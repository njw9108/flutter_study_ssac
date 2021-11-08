import 'package:conference_information/model/conference_data.dart';
import 'package:conference_information/ui/conference_detail.dart';
import 'package:flutter/material.dart';

class ConferenceList extends StatelessWidget {
  final ConferenceData conferenceData;

  ConferenceList(this.conferenceData);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConferenceDetail(conferenceData)),
      );},
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    conferenceData.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
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
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              color: Colors.black,
            ),
            ],
        ),
      ),
    );
  }
}
