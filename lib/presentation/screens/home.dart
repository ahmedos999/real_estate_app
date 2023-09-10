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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Current Location',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: Colors.blue[800]),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Dubai 452529',
                              style: TextStyle(
                                  color: Colors.blue[800], fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue[800]),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            Text(
                              'Try Search Properties',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Icon(Icons.filter_list)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                seeMoreRow('Recently added', 'See all'),
                const SizedBox(
                  height: 20,
                ),
                card(context, 'assets/imgs/img1.jpg', 'buy', '3',
                    'The Shoppers', 'Dubai', '5', '3', '3', 'house', '1.2'),
                SizedBox(
                  height: 20,
                ),
                card(context, 'assets/imgs/img2.jpg', 'buy', '5',
                    'The New Town', 'Ajman', '6', '4', '4', 'house', '1.7')
              ],
            ), //The Main column
          ),
        ),
      ),
    );
  }
}
