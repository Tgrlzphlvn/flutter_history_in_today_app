import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/core/widgets/custom_progress_indicator.dart';
import 'package:flutter_history_in_today_v7/core/widgets/custom_snackbar_action.dart';
import 'package:flutter_history_in_today_v7/feature/data/cache_manager.dart';
import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/feature/service/service.dart';
import 'package:flutter_history_in_today_v7/feature/viewmodel/main_page_view_model.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';
import 'package:flutter_history_in_today_v7/product/navigation/navigation.dart';
import 'package:flutter_history_in_today_v7/product/widgets/bookmark_icon_button.dart';
import 'package:flutter_history_in_today_v7/product/widgets/custom_main_list_tile.dart';
import 'package:provider/provider.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainPageViewModel>(
      create: (context) => MainPageViewModel(
          HistoryInTodayService(), CacheManager(ProjectStrings.historyInTodayKey)),
      builder: (context, child) {
        return Scaffold(
          appBar: _appBar(context),
          body: context.watch<MainPageViewModel>().isLoading
              ? const CustomProgressIndicator()
              : _listViewBuilder(context),
        );
      },
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: ProjectStrings.mainViewTitle,
      actions: [
        IconButton(
          icon: ProjectStrings.favoritesIcon,
          onPressed: () {
            Navigations().goToFavoritesPage(context);
          },
        ),
      ],
    );
  }

  ListView _listViewBuilder(BuildContext context) {
    return ListView.builder(
      itemCount: context.read<MainPageViewModel>().items?.length ?? 0,
      itemBuilder: (context, index) {
        HistoryInToday? model =
            context.watch<MainPageViewModel>().items?[index] ?? HistoryInToday();
        return _listTileBuild(model, index, context);
      },
    );
  }

  CustomListTile _listTileBuild(
      HistoryInToday model, int index, BuildContext context) {
    return CustomListTile(
      model: model,
      iconButton: BookmarkIconBotton(
        index: index,
        item: model,
        onPressed: () {
          context.read<MainPageViewModel>().cacheMetods.putItem(index, model);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: CustomSnackbarAction(label: ProjectStrings.saveText)));
        },
      ),
    );
  }
}
