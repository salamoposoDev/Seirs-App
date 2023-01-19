import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SedangProses extends StatelessWidget {
  String gambarTanaman;
  SedangProses({super.key, required this.gambarTanaman});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    gambarTanaman,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 75, 34),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Selada",
                        style: GoogleFonts.bebasNeue(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
