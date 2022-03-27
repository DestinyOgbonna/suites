import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/appbar/appbar.dart';
import 'package:suites/widgets/custom_textfield.dart';
import 'package:suites/views/search/search_viewmodel.dart';
import 'package:suites/widgets/drawer.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SearchViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            drawer: (const CustomDrawer()),
            backgroundColor: appWhiteColor,
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(50), child: CustomAppBar()),
            body: SafeArea(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    const CustomTextField(
                      hint: 'Find a Hotel',
                      prefixicons: Icon(
                        Icons.search,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: Text(
                      'Your Searches Will Appear Here',
                      style: AppTextStyles.blackText,
                    )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
