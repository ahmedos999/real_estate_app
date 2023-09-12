import 'package:flutter/material.dart';
import 'package:real_estate_app/presentation/components/detail_components.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        card2(context, 'assets/img/img1.jpg', 'status', '3', 'Bujman',
            'Duabi,aljadaf', '1', '2', '1', 'house', '1.8')
      ]),
    );
  }
}
