import 'package:flutter/material.dart';
import 'package:image_search/model/pixabay_data.dart';
import 'package:image_search/stream/api_inherited_widget.dart';
import 'package:image_search/ui/image_item.dart';
import 'package:image_search/ui/widget/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

  const HomePage({Key? key}) : super(key: key);
}

class _HomePageState extends State<HomePage> {
  final TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    Future.microtask(() {
      final viewModel = ViewInheritedWidget.of(context).viewModel;
      viewModel.searchItem('iphone');
    });
    super.initState();
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ViewInheritedWidget.of(context).viewModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'API test',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: ListView(
        children: [
          SearchBarWidget(
            controller: inputController,
          ),
          StreamBuilder<PixabayData>(
            initialData: PixabayData(total: 0, totalHits: 0, hits: []),
            stream: viewModel.hitsStream,
            builder: (context, snapshot) {
              PixabayData data = snapshot.data!;
              return ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: data.hits
                    .map((e) => ImageItem(
                          hits: e,
                        ))
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
