import 'package:flutter/material.dart';

Widget Letter(String characters, bool hidden) {
  return Container(
      height: 65,
      width: 50,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color(0xFF4D489B),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Visibility(
        visible: !hidden,
        child: Text(
          characters,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ));
}
