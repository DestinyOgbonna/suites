import 'package:flutter/material.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/hotel_details/hotel_details.dart';

// ignore: must_be_immutable
class Hotels extends StatelessWidget {
  Hotels({Key? key, this.hotelimage, this.hotelname, this.location, this.price})
      : super(key: key);
  String? hotelname;
  String? location;
  String? price;
  String? hotelimage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      height: MediaQuery.of(context).size.height * 0.19,
      width: double.infinity,
      decoration: BoxDecoration(
          color: appWhiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0.5, 0.1),
                spreadRadius: 0,
                blurRadius: 5,
                color: appGreyColor)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                      '$hotelimage',
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$hotelname',
                    style: AppTextStyles.subHeadText,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: appPrimaryColor,
                    ),
                    Text(
                      '$location',
                      style: AppTextStyles.smallgreyText,
                    )
                  ],
                ),
                Row(
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HotelDetailsView()));
                        },
                        child: Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                                color: applightGreenColor,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0.1, 0.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      color: applightGreenColor)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Book Now',
                                  style: AppTextStyles.subHeadText,
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 40),
                      child: Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                              color: applightGreenColor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0.1, 0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    color: applightGreenColor)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$price',
                                style: AppTextStyles.subHeadText,
                              ),
                              Text(
                                'Per Night',
                                style: AppTextStyles.smallgreyText,
                              ),
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
