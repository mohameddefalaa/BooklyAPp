import 'package:bookly/Features/Home/Presentation/VIews/widgets/Custome_app_bar.dart';
import 'package:bookly/Features/Home/Presentation/VIews/widgets/customelistview.dart';
import 'package:bookly/core/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomeAppBar(),
            const CustomeListView(),
            Gap(5),
            Text('Best Seller', style: Textstyles.titlemeduim),
          ],
        ),
      ),
    );
  }
}
