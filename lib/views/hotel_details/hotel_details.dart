import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/hotel_details/hotel_details_viewmodel.dart';
import 'package:suites/widgets/custom_button.dart';

import 'widgets/facilities.dart';

class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HotelDetailsViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              //  extendedPadding: const EdgeInsets.only(left: 30),
              clipBehavior: Clip.hardEdge,
              label: InkWell(
                onTap: (){},
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const BookNowButton(
                      buttonTexts: 'Book Now',
                      roomPrice: '150\$',
                    )),
              ),
              onPressed: () {},
            ),
            body: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/spa.jpg'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 408.0),
                  child: Container(
                    height: 700,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                      color: appWhiteColor,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 18.0, left: 30, right: 30),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Eko Hotels',
                                  style: AppTextStyles.blackText),
                              const Icon(
                                Icons.favorite,
                                color: appPrimaryColor,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: appPrimaryColor,
                                ),
                                Text(
                                  'Omachi Rumuodomanya',
                                  style: AppTextStyles.smallgreyText,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 18),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: appPrimaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: appPrimaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: appPrimaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: appPrimaryColor,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: appPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Facilities',
                                    style: AppTextStyles.smallblueText),
                                Text(
                                  'More',
                                  style: AppTextStyles.smallgreyText,
                                )
                              ],
                            ),
                          ),
                          NotificationListener<OverscrollIndicatorNotification>(
                            onNotification: (overScroll) {
                              overScroll.disallowIndicator();
                              return true;
                            },
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Facilities(
                                    icon: const Icon(
                                      Icons.group_add,
                                      color: appWhiteColor,
                                      size: 15,
                                    ),
                                    facilityType: '2 Adults',
                                  ),
                                  Facilities(
                                    icon: const Icon(
                                      Icons.wifi,
                                      color: appWhiteColor,
                                      size: 15,
                                    ),
                                    facilityType: 'Free Wifi',
                                  ),
                                  Facilities(
                                    icon: const Icon(
                                      Icons.spa_outlined,
                                      color: appWhiteColor,
                                      size: 15,
                                    ),
                                    facilityType: 'Spa',
                                  ),
                                  Facilities(
                                    icon: const Icon(
                                      Icons.wine_bar,
                                      color: appWhiteColor,
                                      size: 15,
                                    ),
                                    facilityType: 'Bar',
                                  ),
                                  Facilities(
                                    icon: const Icon(
                                      Icons.fitness_center_outlined,
                                      color: appWhiteColor,
                                      size: 15,
                                    ),
                                    facilityType: 'Gym',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'I am trying to add a Background image to my Flutter App, and I have gone through all similar questions on SO. The app m runs fine but the image does not appear. Scaffold does not support any concept of a background image. What you can do is give the Scaffold a transparent color and put it in a Container and use the decoration property to pull in the required background image. The app bar is also transparent.',
                            style: AppTextStyles.mediumBlueText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
