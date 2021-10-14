import 'package:flutter/material.dart';
import 'package:subway_info_app/api.dart' as api;
import 'package:subway_info_app/model/subway_data.dart';
import 'package:subway_info_app/ui/subway_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? url;
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('지하철 정보'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                const Text('역 이름'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      decoration: const InputDecoration(
                        hintText: '역 이름을 입력해주세요.',
                      ),
                      controller: textEditingController,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      url = api.MakeApiUrl(textEditingController.text);
                    });
                  },
                  child: const Text('조회'),
                ),
              ],
            ),
            FutureBuilder<SubwayData>(
              future: (url != null) ? api.fetch(url!) : null,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return const Text('에러가 발생했습니다');
                }
                if (!snapshot.hasData) {
                  return const Text('');
                }
                SubwayData data = snapshot.data!;
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: data.realtimeArrivalList
                          ?.map(
                            (e) => SubwayListItem(arrivalData: e),
                          )
                          .toList() ??
                      [const Text('데이터가 없습니다.')],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
