import 'package:flutter/material.dart';

class SedangProses extends StatelessWidget {
  String gambarTanaman;
  SedangProses({super.key, required this.gambarTanaman});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            child: Image.asset(gambarTanaman),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
