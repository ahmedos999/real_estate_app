import 'package:flutter/material.dart';
import 'package:real_estate_app/presentation/components/home_components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    Text(
                      'Create post',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 9, 82, 142),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'i am looking to',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        whiteContainer('Buy a Property'),
                        whiteContainer('Sell a Property'),
                        whiteContainer('Rent a Property')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Properties for you',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text('See all',
                        style: TextStyle(fontSize: 16, color: Colors.blue)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                card(context)
              ],
            ), //The Main column
          ),
        ),
      ),
    );
  }
}
