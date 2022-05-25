import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.model,
    required this.iconButton,
  }) : super(key: key);

  final HistoryInToday? model;
  final Widget iconButton;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: ProjectStrings.subtitlePadding,
        child:
            Text(model?.durum ?? '', style: Theme.of(context).textTheme.subtitle1),
      ),
      subtitle: Column(
        children: [
          _mainText(),
          _dateAndIconButton(),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Padding _mainText() {
    return Padding(
      padding: ProjectStrings.textPadding,
      child: Text(
        model?.olay ?? '',
        style: ProjectStrings.textStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Padding _dateAndIconButton() {
    return Padding(
      padding: ProjectStrings.textPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${model?.gun ?? ''}.${model?.ay ?? ''}.${model?.yil ?? ''}',
              style: ProjectStrings.textStyle),
          iconButton,
        ],
      ),
    );
  }
}
