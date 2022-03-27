import 'package:flutter/material.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 150.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
            ),
            child: UserAccountsDrawerHeader(
              margin: const EdgeInsets.only(bottom: 0),
              accountName: const Text('Destiny Ogbonna'),
              accountEmail: const Text('destinyogbonna@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: appWhiteColor,
                  child: Icon(Icons.person, color: appPrimaryColor),
                ),
              ),
              decoration: const BoxDecoration(
                color: appPrimaryColor,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(right: 150,),
            height: MediaQuery.of(context).size.height * 0.71,
            decoration: const BoxDecoration(
              color: appWhiteColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15)),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 100),
              child: Column(
                children: [
                 
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        'Profile',
                        style: AppTextStyles.smallblueText,
                      ),
                      leading: const Icon(
                        Icons.person,
                        color: appBlackColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        'Settings',
                        style: AppTextStyles.smallblueText,
                      ),
                      leading: const Icon(
                        Icons.settings,
                        color: appBlackColor,
                      ),
                    ),
                  ),

                   InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        'About Us',
                        style: AppTextStyles.smallblueText,
                      ),
                      leading: const Icon(
                        Icons.article_rounded,
                        color: appBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
