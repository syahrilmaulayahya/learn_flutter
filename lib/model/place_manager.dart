import 'package:flutter/material.dart';
import 'package:flutter_submission/model/place.dart';

class FavoritePlace extends ChangeNotifier {
  final _place = placeList;
  List<Place> get favoritePlace => List.unmodifiable(_place);
  void change(int index) {
    _place[index].isFavorite = !_place[index].isFavorite;
    notifyListeners();
  }
}
