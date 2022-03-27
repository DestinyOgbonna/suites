import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/home/homepage_viewmodel.dart';
import 'package:suites/views/home/widget/hotels.dart';
import 'package:suites/views/appbar/appbar.dart';
import 'package:suites/widgets/drawer.dart';

class HomePageView extends StatelessWidget {
  HomePageView({Key? key}) : super(key: key);

  final CollectionReference productsRef =
      FirebaseFirestore.instance.collection('hotels');

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  model.chatRoom();
                },
                child: const Icon(Icons.chat),
              ),
              drawer: (const CustomDrawer()),
              backgroundColor: appWhiteColor,
              appBar:const  PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: CustomAppBar(
                   
                  )),
              body: SafeArea(
                child: Stack(children: [
                  FutureBuilder<QuerySnapshot>(
                    future: productsRef.get(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Scaffold(
                          body: Center(
                            child: Text(
                              'Error ${snapshot.error}',
                              style: AppTextStyles.blackText,
                            ),
                          ),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView(
                          children: snapshot.data!.docs.map((document) {
                            return Hotels(
                              hotelimage: (document.data() as dynamic)['image']
                                  [0],
                              price:
                                  '\$${(document.data() as dynamic)['price']}',
                              hotelname: (document.data() as dynamic)['name'],
                              location:
                                  (document.data() as dynamic)['location'],
                            );
                          }).toList(),
                        );
                      }
                      return const Scaffold(
                        body: Center(child: CircularProgressIndicator()),
                      );
                    },
                  )
                ]),
              ));
        });
  }
}
