import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:poliwallet/core/models/os_collections.dart';

class OS_CollectionsList extends ChangeNotifier {
  final List<OS_Collections> _items = [];

  UnmodifiableListView<OS_Collections> get items =>
      UnmodifiableListView(_items);

  void notify() {
    notifyListeners();
  }
}
