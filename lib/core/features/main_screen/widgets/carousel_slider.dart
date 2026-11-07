import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styling/app_colors.dart';

class CardData {
  final String balance;
  final String number;
  final String holder;
  final String expiry;
  final Color color;

  const CardData({
    required this.balance,
    required this.number,
    required this.holder,
    required this.expiry,
    required this.color,
  });
}

class CardsSlider extends StatefulWidget {
  const CardsSlider({super.key});

  @override
  State<CardsSlider> createState() => _CardsSliderState();
}

class _CardsSliderState extends State<CardsSlider> {
  int _currentIndex = 0;

  // TODO: replace this sample data with the user's real cards.
  final List<CardData> _cards = [
    CardData(
      balance: "\$12,450.00",
      number: "**** **** **** 4821",
      holder: "Hager Samy",
      expiry: "08/29",
      color: AppColors.primaryColor,
    ),
    CardData(
      balance: "\$3,120.50",
      number: "**** **** **** 7306",
      holder: "Hager Samy",
      expiry: "02/28",
      color: AppColors.blackColor,
    ),
    CardData(
      balance: "\$860.75",
      number: "**** **** **** 1594",
      holder: "Hager Samy",
      expiry: "11/27",
      color: const Color(0xFF3F51B5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: _cards.length,
          itemBuilder: (context, index, realIndex) =>
              _CardItem(card: _cards[index]),
          options: CarouselOptions(
            height: 200.w,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeFactor: 0.15,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() => _currentIndex = index);
            },
          ),
        ),
        SizedBox(height: 12.h),
        DotsIndicator(
          dotsCount: _cards.length,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            color: AppColors.grayColor,
            activeColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}

class _CardItem extends StatelessWidget {
  final CardData card;

  const _CardItem({required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: card.color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Total Balance", style: _textStyle(14.sp)),
          SizedBox(height: 4.h),
          Text(
            card.balance,
            style: _textStyle(26.sp, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(card.number, style: _textStyle(16.sp)),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(card.holder, style: _textStyle(14.sp)),
              Text(card.expiry, style: _textStyle(14.sp)),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle _textStyle(double fontSize, {FontWeight? fontWeight}) {
    return TextStyle(
      color: AppColors.whiteColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
