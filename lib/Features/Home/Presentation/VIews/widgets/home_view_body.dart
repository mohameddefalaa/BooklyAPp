import 'package:bookly/Features/Home/Presentation/VIews/widgets/Custome_app_bar.dart';
import 'package:bookly/Features/Home/Presentation/VIews/widgets/customelistview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(children: [CustomeAppBar(), CustomeListView()]),
      ),
    );
  }
}
