import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';

class DeleteIconBotton extends StatelessWidget {
  const DeleteIconBotton({Key? key, required this.onPressed}) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ProjectStrings.deleteIcon,
      onPressed: onPressed,
    );
  }
}
