import 'package:bookly/Features/Home/Presentation/VIews/widgets/Custome_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [CustomeAppBar()]));
  }
}
