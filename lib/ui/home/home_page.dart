import 'package:flutter/material.dart';
import 'package:image_search/ui/home/home_view_model.dart';
import 'package:image_search/ui/items/image_item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

  const HomePage({Key? key}) : super(key: key);
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<HomeViewModel>().searchItem('iphone');
    });
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
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
          buildSearchbar(viewModel),
          buildItems(viewModel),
        ],
      ),
    );
  }

  Widget buildSearchbar(HomeViewModel viewModel) {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return '공백은 허용되지 않습니다.';
                  }
                },
                style: const TextStyle(fontSize: 30),
                controller: inputController,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  viewModel.searchItem(inputController.text);
                }
              },
              child: const Text(
                '검색',
                style: TextStyle(fontSize: 28, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItems(HomeViewModel viewModel) {
    if (viewModel.pixabayData != null) {
      return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: viewModel.pixabayData!.hits
            .map((e) => ImageItem(
                  hits: e,
                ))
            .toList(),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
