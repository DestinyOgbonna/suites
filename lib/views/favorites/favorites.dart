import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/search/search_viewmodel.dart';
import 'package:suites/views/appbar/appbar.dart';
import 'package:suites/widgets/drawer.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchViewModel>(
        builder: (context, model, child) {
          return   Scaffold(
             drawer: (const CustomDrawer()),
            appBar:const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: CustomAppBar()),
            body:  SafeArea(
              child: Center(child: Text('Favorites Page', style: AppTextStyles.blackText,
                     )),
            ),
          );
        });
  }
}
