import 'package:flutter/material.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

class Hotels extends StatelessWidget {
  Hotels({Key? key, this.hotelimage, this.hotelname, this.location, this.price}) : super(key: key);
  String? hotelname;
  String? location;
  String? price;
  String? hotelimage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      height: MediaQuery.of(context).size.height * 0.2,
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
        children: [
          Container(
            height: 230,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:  DecorationImage(
                    image: AssetImage(
                      '$hotelimage',
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$hotelname',
                  style: AppTextStyles.boldBlueText,
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
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 130),
                child: Container(
                    height: 50,
                    width: 65,
                    decoration: BoxDecoration(
                        color: appblueColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0.1, 0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: appblueColor)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$price',
                          style: AppTextStyles.boldBlueText,
                        ),
                        Text(
                          'Per Night',
                          style: AppTextStyles.smallgreyText,
                        ),
                      ],
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
