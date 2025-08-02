import 'package:bookly/Features/Home/Presentation/VIews/widgets/BookItem.dart';
import 'package:bookly/Features/Home/Presentation/VIews/widgets/customeblurbutton.dart';
import 'package:flutter/material.dart';

class CustomeListView extends StatelessWidget {
  const CustomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              BookItem(),
              Positioned(bottom: 32, right: 10, child: Customeblurbutton()),
            ],
          );
        },
      ),
    );
  }
}
