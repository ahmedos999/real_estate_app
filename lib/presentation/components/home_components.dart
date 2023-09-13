import 'package:flutter/material.dart';

Widget whiteContainer(String type) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    ),
  );
}

Widget card(
    BuildContext context,
    String img,
    String status,
    String duration,
    String name,
    String location,
    String numOfBed,
    String numOfBath,
    String numOfCars,
    String type,
    String price) {
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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Text(
                    status,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
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
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(50)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.bed,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      numOfBed,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.bathtub, color: Colors.grey),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      numOfBath,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.car_repair, color: Colors.grey),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      numOfCars,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Text(
                    '|',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    type,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Text(
            "\$$price M",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ],
  );
}

Widget seeMoreRow(String leading, String trailling) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        leading,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      Text(trailling, style: const TextStyle(fontSize: 16, color: Colors.blue)),
    ],
  );
}
