import 'package:flutter/material.dart';
import 'package:real_estate_app/presentation/components/detail_components.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(children: [
              titleRow(),
              SizedBox(
                height: 10,
              ),
              card2(context, 'assets/imgs/img1.jpg', '3', 'Bujman',
                  'Duabi,aljadaf', '1.8')
            ]),
          ),
        ),
      ),
    );
  }
}
