import 'package:bookly/core/assetesdata.dart';
import 'package:bookly/core/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 70.h,

            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(image: AssetImage(Assetesdata.book)),
                ),
              ),
            ),
          ),
          Gap(MediaQuery.of(context).size.width / 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Harry Potter and the Goblet of Fire',
                  style: Textstyles.textStyle20,
                ),
              ),
              Text('J.K. Rowling', style: Textstyles.textstyle14),
              Gap(5),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Textstyles.textStyle18.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(MediaQuery.of(context).size.width * 0.2 / 2),
                  RatengWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RatengWidget extends StatelessWidget {
  const RatengWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assetesdata.star),
        Gap(MediaQuery.of(context).size.width * (0.025 / 2)),
        Text('4.8', style: Textstyles.textStyle16),
        Gap(MediaQuery.of(context).size.width * (0.025 / 2)),
        Text('(2390)', style: Textstyles.textstyle14),
      ],
    );
  }
}
