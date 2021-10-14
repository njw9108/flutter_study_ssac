import 'package:flutter/material.dart';
import 'package:subway_info_app/model/realtime_arrival_list.dart';
import 'package:subway_info_app/model/subway_data.dart';

class SubwayListItem extends StatelessWidget {
  final RealtimeArrivalList arrivalData;

  const SubwayListItem({
    Key? key,
    required this.arrivalData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                arrivalData.trainLineNm,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '현재 위치 : ${arrivalData.arvlMsg3}',
                style: const TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '현재 위치 : ${arrivalData.arvlMsg2}',
                style: const TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
