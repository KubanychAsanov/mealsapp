import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 100,
          flexibleSpace: Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
          ),
        )
      ],
    );
  }
}
