import 'package:flutter/material.dart';

class ShoppingPage2 extends StatefulWidget {
  const ShoppingPage2({Key key}) : super(key: key);

  @override
  _ShoppingPage2State createState() => _ShoppingPage2State();
}

class _ShoppingPage2State extends State<ShoppingPage2> {
  List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          height: 50,
          child: Text(
            'test',
          ),
        ),
        ListView(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white38),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black54),
              ),
              onPressed: () {},
              child: Text(
                '쇼핑',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////
// class ShoppingPage extends StatelessWidget {
//   const ShoppingPage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // 쇼핑 항목 데이터
//     final _ctrlItems = [
//       '뭐하지',
//       '책방',
//       '리빙',
//       '레시피',
//       '장보기',
//       '패션뷰티',
//       '쇼핑',
//     ];
//     return ListView(
//       children: [
//         // ListView(
//         //   scrollDirection: Axis.horizontal,
//         //   children:_ctrlItems.map((e) => null),
//         // ),
//         ToggleButtons(
//           // color: Colors.black.withOpacity(0.60),
//           // selectedColor: Color(0xFF6200EE),
//           // selectedBorderColor: Color(0xFF6200EE),
//           // fillColor: Color(0xFF6200EE).withOpacity(0.08),
//           // splashColor: Color(0xFF6200EE).withOpacity(0.12),
//           // hoverColor: Color(0xFF6200EE).withOpacity(0.04),
//           // borderRadius: BorderRadius.circular(4.0),
//           // constraints: BoxConstraints(minHeight: 36.0),
//           children: [],
//           isSelected: _selections,
//           onPressed: (index) {
//             // Respond to button selection
//             setState(() {
//               isSelected[index] = !isSelected[index];
//             });
//           },
//
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text('BUTTON 1'),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text('BUTTON 2'),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text('BUTTON 3'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
