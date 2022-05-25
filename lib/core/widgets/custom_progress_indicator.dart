import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/core/colors/project_colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitPouringHourGlass(
        color: ProjectColors.salkim,
      ),
    );
  }
}
