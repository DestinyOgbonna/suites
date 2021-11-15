import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/home/homepage_viewmodel.dart';
import 'package:suites/views/home/widget/hotels.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            drawer: (ListView()),
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
            body: Container(
              margin: const EdgeInsets.only(
                right: 15,
                left: 15,
                bottom: 10,
              ),
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowIndicator();
                  return true;
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Luxury Hotels',
                        style: AppTextStyles.boldBlueText,
                      ),
                      Hotels(
                        hotelimage: 'images/room.jpg',
                        hotelname: 'Hotel Indigo',
                        location: 'Airforce Road, Eliozu',
                        price: '\$110',
                      ),
                      Hotels(
                        hotelimage: 'images/hotel.jpg',
                        hotelname: 'Golden Tulip',
                        location: 'Lagos Ibadan Express way',
                        price: '\$60',
                      ),
                      Hotels(
                        hotelimage: 'images/spa.jpg',
                        hotelname: 'Eko Hotels',
                        location: 'Aminu Kano Expressway,Abuja',
                        price: '\$150',
                      ),
                      Hotels(
                        hotelimage: 'images/hotel.jpg',
                        hotelname: 'Sheraton Hotels',
                        location: 'Amen Estate Lekki, Lagos',
                        price: '\$90',
                      ),
                      Hotels(
                        hotelimage: 'images/spa.jpg',
                        hotelname: 'Le Meridian',
                        location: 'Aba Road Port Harcourt',
                        price: '\$80',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
