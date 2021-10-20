import 'package:flutter/material.dart';
import 'package:image_search/stream/api_inherited_widget.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController inputController = TextEditingController();

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ViewInheritedWidget.of(context).viewModel;
    final _formKey = GlobalKey<FormState>();

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
                  FocusScope.of(context).unfocus();

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
}
