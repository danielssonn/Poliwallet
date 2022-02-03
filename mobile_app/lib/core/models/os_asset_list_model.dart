import 'dart:collection';
import 'package:flutter/foundation.dart';

class OS_AssetList extends ChangeNotifier {
  final List<OS_AssetList> _items = [];

  UnmodifiableListView<OS_AssetList> get items => UnmodifiableListView(_items);

  void notify() {
    notifyListeners();
  }
}
