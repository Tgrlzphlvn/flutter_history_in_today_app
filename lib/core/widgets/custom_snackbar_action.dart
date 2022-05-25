import 'package:flutter/material.dart';

class CustomSnackbarAction extends StatelessWidget {
  const CustomSnackbarAction({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return SnackBarAction(
      label: label,
      onPressed: () {
        Navigator.of(context).canPop();
      },
    );
  }
}
