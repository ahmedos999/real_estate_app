import 'package:flutter/material.dart';

Widget card2(BuildContext context, String img, String duration, String name,
    String location, String price) {
  return Column(
    children: [
      Stack(
        children: [
          Positioned(
            child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(img)))),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.ios_share,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.timer_sharp,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '0-$duration Month',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    location,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Text(
                "\$$price M",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Budget',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget titleRow() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.arrow_back_ios,
        size: 20,
      ),
      Text(
        'Details Page',
        style: TextStyle(
          fontSize: 22,
        ),
      ),
      SizedBox()
    ],
  );
}
