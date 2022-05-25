
import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/feature/view/favorites_page_view.dart';

class Navigations {
  void goToFavoritesPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const FavoritesPageView()));
  }
}
