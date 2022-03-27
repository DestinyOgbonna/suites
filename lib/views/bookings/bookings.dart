import 'package:flutter/material.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/bookings/bookings_viewmodel.dart';
import 'package:suites/views/appbar/appbar.dart';
import 'package:suites/widgets/drawer.dart';
import 'package:provider/provider.dart';

class BookingsView extends StatelessWidget {
  const BookingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BookingsViewModel>(
        builder: (context, model, child) {
          return  Scaffold(
             drawer: (const CustomDrawer()),
            appBar:  const  PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: CustomAppBar()),
          
            body:SafeArea(
              child: Center(child: Text('This is the Bookings Page', style: AppTextStyles.blackText,)),
            ),
          );
        });
  }
}
