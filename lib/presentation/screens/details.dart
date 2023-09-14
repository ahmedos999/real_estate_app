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
              const SizedBox(
                height: 10,
              ),
              card2(context, 'assets/imgs/img1.jpg', '3', 'Bujman',
                  'Duabi,aljadaf', '1.8'),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/imgs/pp.jpg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alison burger',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Buyer',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue[900]),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Chat',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'properties Requirments',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text('See all',
                      style: const TextStyle(fontSize: 16, color: Colors.blue)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              propertiesRow(
                  Icons.bed, '4', 'Bedrooms', Icons.pool, 'Swimming pool'),
              SizedBox(
                height: 10,
              ),
              propertiesRow(Icons.bathroom, '2', 'bathroom',
                  Icons.local_parking, 'Local Parking'),
              SizedBox(
                height: 10,
              ),
              propertiesRow(Icons.car_repair, '1', 'Car Space',
                  Icons.sports_tennis, 'Tennis Court'),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber[200]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Buyer note',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            'i want a house with a big backyard so the kids and my pets have plenty of space to play')
                      ]),
                ),
              )
            ]), //main
          ),
        ),
      ),
    );
  }
}
