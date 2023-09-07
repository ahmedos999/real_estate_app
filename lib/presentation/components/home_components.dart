import 'package:flutter/material.dart';

Widget whiteContainer() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Buy a Property',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    ),
  );
}
