import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/core/theme/light_theme.dart';

class ProjectStrings {
  // Service Strings
  static const String url = 'https://api.ubilisim.com/';
  static const String path = 'tarihtebugun';

  // Titles
  static Text mainViewTitle = Text(
    'Tarihte Bugün',
    style: ProjectStrings.titleStyle,
  );
  static Text favoriteViewTitle = Text(
    'Favoriler',
    style: ProjectStrings.titleStyle,
  );

  // Snackbar Label Strings
  static String saveText = 'Kaydedildi.';
  static String deleteText = 'Silindi';

  // Hive Keys
  static const String historyInTodayKey = 'historyInTodayCache';

  //Theme Font Family
  static const String fontFamily = 'helvetica';

  //Lottie Asset Road
  static const String lottieAssetPath = 'assets/lottie_ape.json';

  // Icons
  static const Icon addedBookMark = Icon(Icons.bookmark_sharp);
  static const Icon favoritesIcon = Icon(Icons.bookmarks);
  static const Icon deleteIcon = Icon(Icons.clear);

  // Hive Constants
  static const int historyInTodayTypeId = 1;

  // Text Styles
  static TextStyle? textStyle = LightTheme().theme.textTheme.subtitle2;
  static TextStyle? subtitleStyle = LightTheme().theme.textTheme.subtitle1;
  static TextStyle? titleStyle = LightTheme().theme.textTheme.headline5;

  // Paddings
  static const EdgeInsets subtitlePadding =
      EdgeInsets.only(left: 10, top: 8.0, bottom: 8.0);
  static const EdgeInsets textPadding = EdgeInsets.only(top: 8.0, bottom: 8.0);

  // MediaQueries
  static lottieHeight(BuildContext context) {
    final double lottieHeight = MediaQuery.of(context).size.height / 4;
  }
}
