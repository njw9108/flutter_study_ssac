import 'package:flutter/material.dart';
import 'package:image_search/stream/api_view_model.dart';

class ViewInheritedWidget extends InheritedWidget {
  final ApiViewModel viewModel;

  const ViewInheritedWidget({
    Key? key,
    required this.viewModel,
    required Widget child,
  }) : super(key: key, child: child);

  static ViewInheritedWidget of(BuildContext context) {
    final ViewInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<ViewInheritedWidget>();
    assert(result != null, 'No ViewInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ViewInheritedWidget oldWidget) {
    //return oldWidget.api.count != api.count;
    return true;
  }
}
