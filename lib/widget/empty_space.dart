import 'package:flutter/material.dart';

class EmptySpace extends StatelessWidget {
  const EmptySpace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        //borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      child: SizedBox(),
    );
  }
}
