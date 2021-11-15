import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/widgets/custom_textfield.dart';
import 'package:suites/views/search/search_viewmodel.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SearchViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            drawer: (ListView()),
            backgroundColor: appWhiteColor,
            appBar: AppBar(
              toolbarHeight: 60,
              elevation: 0,
              backgroundColor: appWhiteColor,
              iconTheme: const IconThemeData(color: appPrimaryColor),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: appWhiteColor,
                    radius: 30,
                    child: Image.asset(
                      'images/gamer.png',
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    CustomTextField(
                      hint: 'Find a Hotel',
                      prefixicons: const Icon(
                        Icons.search,
                        // color: appPrimaryColor,
                      ),
                    ),
                    const Center(
                        child: Text('Your Searches will appear here')),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
