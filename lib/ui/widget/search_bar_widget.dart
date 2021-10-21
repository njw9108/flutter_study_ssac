import 'package:flutter/material.dart';
import 'package:image_search/stream/api_inherited_widget.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchBarWidget({Key? key, required this.controller}) : super(key: key);

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
                controller: controller,
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
                  viewModel.searchItem(controller.text);
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
