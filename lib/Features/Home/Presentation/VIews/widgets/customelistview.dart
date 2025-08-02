import 'package:bookly/Features/Home/Presentation/VIews/widgets/BookItem.dart';
import 'package:flutter/material.dart';

class CustomeListView extends StatelessWidget {
  const CustomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return BookItem();
        },
      ),
    );
  }
}
