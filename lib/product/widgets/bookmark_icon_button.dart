import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';

class BookmarkIconBotton extends StatefulWidget {
  const BookmarkIconBotton({
    Key? key,
    required this.index,
    required this.item,
    required this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  final int index;
  final HistoryInToday item;

  @override
  State<BookmarkIconBotton> createState() => _BookmarkIconBottonState();
}

class _BookmarkIconBottonState extends State<BookmarkIconBotton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ProjectStrings.addedBookMark,
      onPressed: widget.onPressed,
    );
  }
}
