import 'package:bookly/Features/Home/Presentation/VIews/widgets/Custome_app_bar.dart';
import 'package:bookly/Features/Home/Presentation/VIews/widgets/bestseeleritem.dart';
import 'package:bookly/Features/Home/Presentation/VIews/widgets/bestsellerlistview.dart';
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
        padding: const EdgeInsets.only(left: 30.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomeAppBar(),
                  const CustomeListView(),
                  Gap(MediaQuery.of(context).size.height * 0.025),
                  Text('Best Seller', style: Textstyles.textStyle18),
                  Gap(MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            ),
            SliverFillRemaining(child: BestSellerListView()),
          ],
        ),
      ),
    );
  }
}
