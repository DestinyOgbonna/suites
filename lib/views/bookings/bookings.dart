import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/views/bookings/bookings_viewmodel.dart';

class BookingsView extends StatelessWidget {
  const BookingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BookingsViewModel(),
        builder: (context, model, child) {
          return const Scaffold(
            body: SafeArea(
              child: Center(child: Text('This is the Bookings Page')),
            ),
          );
        });
  }
}
