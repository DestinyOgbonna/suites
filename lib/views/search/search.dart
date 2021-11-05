import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/views/search/search_viewmodel.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SearchViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                  child: const Center(
                      child: Text('Your Searches will appear here'))),
            ),
          );
        });
  }
}
