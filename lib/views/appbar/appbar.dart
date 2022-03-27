import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/views/appbar/appbar_viewmodel.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppBarViewModel>(
        builder: (context, model, child) {
          return AppBar(
            toolbarHeight: 60,
            elevation: 0,
            backgroundColor: appWhiteColor,
            iconTheme: const IconThemeData(color: darkerBlue),
            actions: [
              InkWell(
                onTap: () {
                  model.signOut();
                },
                child: const Padding(
                    padding: EdgeInsets.only(right: 19),
                    child: Icon(Icons.logout_outlined)),
              ),
            ],
          );
        });
  }
}
