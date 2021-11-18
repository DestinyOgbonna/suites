import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/home/homepage_viewmodel.dart';
import 'package:suites/views/home/widget/hotels.dart';

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
              drawer: (Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: UserAccountsDrawerHeader(
                      margin: const EdgeInsets.only(bottom: 0),
                      accountName: const Text('Destiny Ogbonna'),
                      accountEmail: const Text('destinyogbonna@gmail.com'),
                      currentAccountPicture: GestureDetector(
                        child: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: appPrimaryColor,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      margin: const EdgeInsets.only(right: 150),
                      height: MediaQuery.of(context).size.height * 0.71,
                      decoration: const BoxDecoration(
                        color: appWhiteColor,
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const ListTile(
                              title: Text('Home'),
                              leading: Icon(
                                Icons.home,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ListTile(
                              title: Text('Home'),
                              leading: Icon(
                                Icons.home,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ListTile(
                              title: Text('Home'),
                              leading: Icon(
                                Icons.home,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
              backgroundColor: appWhiteColor,
              appBar: AppBar(
                toolbarHeight: 60,
                elevation: 0,
                backgroundColor: appWhiteColor,
                iconTheme: const IconThemeData(color: darkerBlue),
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
