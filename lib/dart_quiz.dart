import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  //transactions.sort()
// 1. 2011년에 일어난 모든 트랜잭션을 찾아 값을 오름차순으로 정리하여 나열하시오
  print('=========1번===========');
  (transactions
        ..sort((Transaction a, Transaction b) => a.value.compareTo(b.value)))
      .where((e) => e.year == 2011)
      .map((e) => e.value)
      .forEach(print);

  print('======================');
// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  ///////같음
  //transactions.map((e) => e.trader.city).toSet().forEach(print);
  /////

  // Set<String> city = {};
  // transactions.forEach((e) => city.add(e.trader.city));
  // city.forEach((e) => print(e));
  print('=========2번===========');
  transactions.map((e) => e.trader.city).toSet().forEach(print);
  print('======================');
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
///////같음
//   (transactions
//           .where((e) => e.trader.city == 'Cambridge')
//           .map((e) => e.trader.name)
//           .toList()
//         ..sort())
//       .toSet()
//       .forEach(print);
/////
//   Set<String> cambridgeWorker = {};
//   transactions
//       .where((e) => (e.trader.city == 'Cambridge'))
//       .forEach((e) => cambridgeWorker.add(e.trader.name));
//   (cambridgeWorker.toList()..sort((a, b) => a.compareTo(b))).forEach(print);
  print('=========3번===========');
  (transactions
          .where((e) => e.trader.city == 'Cambridge')
          .map((e) => e.trader.name)
          .toList()
        ..sort())
      .toSet()
      .forEach(print);
  print('======================');
// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
//   Set<String> name = {};
//   transactions.forEach((e) => name.add(e.trader.name));
//   (name.toSet().toList()..sort((a, b) => a.compareTo(b))).forEach(print);
//   print('');
  print('=========4번===========');
  (transactions.map((e) => e.trader.name).toSet().toList()..sort())
      .forEach(print);
  print('======================');
// 5. 밀라노에 거래자가 있는가?
  print(transactions.any((e) => e.trader.city == 'Milan'));
  print('');
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  transactions.where((e) => e.trader.city == 'Cambridge').toList().forEach((e) {
    print(e.value);
  });
  print('');
// 7. 전체 트랜잭션 중 최대값을 얼마인가?
  ///////같음
  //print(transactions.map((e) => e.value).reduce((int value, int element) => max(value, element)));
  ///////같음
  //print(transactions.reduce((a, b) => a.value > b.value ? a: b).value);
  /////

  List<int> valueItems = [];
  transactions.forEach((e) => valueItems.add(e.value));
  print(valueItems.reduce((v, e) => max(v, e)));
  print('');
// 8. 전체 트랜잭션 중 최소값은 얼마인가?
  print(valueItems.reduce((v, e) => min(v, e)));
  print('');
}
