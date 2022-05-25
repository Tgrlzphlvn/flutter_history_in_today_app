import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/core/widgets/custom_snackbar_action.dart';
import 'package:flutter_history_in_today_v7/feature/data/cache_manager.dart';
import 'package:flutter_history_in_today_v7/feature/model/history_in_today_model.dart';
import 'package:flutter_history_in_today_v7/feature/viewmodel/favorites_page_view_model.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';
import 'package:flutter_history_in_today_v7/product/widgets/custom_main_list_tile.dart';
import 'package:flutter_history_in_today_v7/product/widgets/delete_icon_button.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class FavoritesPageView extends StatefulWidget {
  const FavoritesPageView({Key? key}) : super(key: key);

  @override
  State<FavoritesPageView> createState() => _FavoritesPageViewState();
}

class _FavoritesPageViewState extends State<FavoritesPageView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoritesPageViewModel>(
        create: (context) => FavoritesPageViewModel(
              CacheManager(ProjectStrings.historyInTodayKey),
            ),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              title: ProjectStrings.favoriteViewTitle,
            ),
            body: context.watch<FavoritesPageViewModel>().items?.length == 0
                ? _showLottie(context)
                : _favoritesListView(
                    context, context.watch<FavoritesPageViewModel>().items ?? []),
          );
        });
  }

  Center _showLottie(BuildContext context) {
    return Center(
      child: Expanded(
        child: Lottie.asset(
          ProjectStrings.lottieAssetPath,
        ),
      ),
    );
  }

  ListView _favoritesListView(BuildContext context, List<HistoryInToday> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          HistoryInToday? model = items[index];

          return CustomListTile(
            model: model,
            iconButton: DeleteIconBotton(onPressed: () {
              context.read<FavoritesPageViewModel>().cacheManager.deleteItem(index);

              context.read<FavoritesPageViewModel>().fetchDatas();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: CustomSnackbarAction(label: ProjectStrings.deleteText),
                ),
              );
            }),
          );
        });
  }
}
