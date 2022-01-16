import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:flutter/material.dart';

class ConferenceListWidget extends StatelessWidget {
  final ConferenceInfo conferenceInfo;
  final Function() onClick;

  const ConferenceListWidget({
    Key? key,
    required this.conferenceInfo,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(conferenceInfo.name),
          subtitle: Text(conferenceInfo.location),
          onTap: onClick,
        ),
        const Divider(
          color: Colors.black,
        )
      ],
    );
  }
}
