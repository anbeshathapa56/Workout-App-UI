import 'package:flutter/material.dart';

Widget listItem(String bg, String title, int exercise, int time) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 10.0),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(bg),
        fit: BoxFit.cover,
        colorFilter: const ColorFilter.mode(Color(0x60212121), BlendMode.darken),
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$exercise Exercise",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
          ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            "$time Minutes Per Day",
            style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
          ),
        ],
      ),
    ),
  );
}
